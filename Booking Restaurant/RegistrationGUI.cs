﻿using Booking_Restaurant.GUI;
using Booking_Restaurant.Models;
using Microsoft.EntityFrameworkCore;
using MimeKit;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Booking_Restaurant
{
    public partial class RegistrationGUI : Form
    {
        BookingRestaurant_PRNContext context;
        public RegistrationGUI()
        {
            context = new BookingRestaurant_PRNContext();
            InitializeComponent();
            bindGrid(true);
        }

        public void bindGrid(bool a)
        {
        
            int aid = context.Accounts.Where(x => x.Username == Settings.UserName).Select(x => x.Id).SingleOrDefault();
            if(Settings.roleid==1 || Settings.roleid==2)
            {
                aid = -1;
            }    
            var data=context.Bookings.Include(x => x.Table).Include(x => x.Time).
                Where(x=>x.AccountId==(aid==-1?x.AccountId:aid)).
                OrderByDescending(x=>x.Orderdate).ToList();

            var dataset = context.Bookings.Include(x => x.Account).Include(x => x.Table).Include(x => x.Time).
                Where(x => x.AccountId == (aid == -1 ? x.AccountId : aid)).ToList();

            dataGridView1.Rows.Clear();
            foreach (var item in dataset)
            {
                var data1 = (System.DateTime)item.Orderdate;
                var date = data1.ToString("dd/MM/yyyy");
                dataGridView1.Rows.Add(item.Id,item.Account.Fullname ,item.Table.Name, item.Table.Capacity, item.Table.Description, date, item.Time.Time1, item.Numberofpeople);

            };
            //    foreach (var item in data)
            //{
            //    var data1 = (System.DateTime)item.Orderdate;
            //    var date= data1.ToString("dd/MM/yyyy");
            //    dataGridView1.Rows.Add(item.Id, item.Table.Name, item.Table.Capacity, item.Table.Description, date, item.Time.Time1, item.Numberofpeople);
            //}
            if(a==true)
            {    
                DataGridViewButtonColumn button1 = new DataGridViewButtonColumn();
                {
                    button1.Name = "Delete";
                    button1.HeaderText = "Delete";
                    button1.Text = "Delete";
                    button1.UseColumnTextForButtonValue = true;
                    this.dataGridView1.Columns.Add(button1);
                }
            }
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == dataGridView1.Columns["Delete"].Index)
            {
                int rId;
                rId = (int)dataGridView1.Rows[e.RowIndex].Cells["Id"].Value;
                DialogResult dr = MessageBox.Show($"Do you want to delete this Reservation ","Delete",MessageBoxButtons.YesNo);

                if (dr == DialogResult.Yes)
                {
                    //remove booking
                    Models.Booking a = context.Bookings.Find(rId);
                    context.Bookings.Remove(a);
                    context.SaveChanges();
                    MessageBox.Show("Delete succesfully!");
                    bindGrid(false);

                    //send mail
                    try
                    {
                        MimeMessage message = new MimeMessage();
                        message.From.Add(new MailboxAddress("Sender Name", "ntest6688@gmail.com"));
                        message.To.Add(new MailboxAddress("Recipient Name", "duongthhe153643@fpt.edu.vn"));
                        message.Subject = "Remove Register Table " + a.Table.Name + " of " + a.Account.Fullname;
                        message.Body = new TextPart("plain") { Text = "Remove Register Table " + a.Table.Name + " of " + a.Account.Fullname };
                        MailMessage msg = new MailMessage();
                        
                        using (SmtpClient sc = new SmtpClient())
                        {
                            sc.Port = 587;
                            sc.Host = "smtp.gmail.com";
                            sc.EnableSsl = true;
                            sc.UseDefaultCredentials = false;
                            sc.Credentials = new System.Net.NetworkCredential("ntest6688@gmail.com", "hoduong201");
                            
                        }
                        MessageBox.Show("Email has been sent");
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("Error sending email: " + ex.Message);
                    }

                    //try
                    //{
                    //    MailMessage msg = new MailMessage();

                    //    msg.From = new MailAddress("ntest6688@gmail.com");
                    //    msg.To.Add("duongthhe153643@fpt.edu.vn");
                    //    msg.Subject = "test";
                    //    msg.Body = "Test Content";
                    //    //msg.Priority = MailPriority.High;


                    //    using (SmtpClient client = new SmtpClient())
                    //    {
                    //        client.EnableSsl = true;
                    //        client.UseDefaultCredentials = false;
                    //        client.Credentials = new NetworkCredential("ntest6688@gmail.com", "hoduong201");
                    //        client.Host = "smtp.gmail.com";
                    //        client.Port = 587;
                    //        client.DeliveryMethod = SmtpDeliveryMethod.Network;

                    //        client.Send(msg);
                    //    }
                    //    MessageBox.Show("Email has been sent");
                    //}
                    //catch (Exception ex)
                    //{
                    //    MessageBox.Show("Error sending email: " + ex.Message);
                    //}


                }
              
            }
        }

        private void RegistrationGUI_Load(object sender, EventArgs e)
        {
            dateTimePicker1.Value = DateTime.Now;

            string time = CreateDate.RoundUp(DateTime.Now, TimeSpan.FromMinutes(30)).ToString("HH:mm");
            int timeid = context.Times.Where(x => x.Time1 == time).Select(x => x.Id).SingleOrDefault();
            var list = context.Times.Where(x => x.Id >= timeid).ToList();
            Time a = new Time();
            a.Id = -1;
            a.Time1 = "All time";
            list.Insert(0, a);
            comboBox1.DisplayMember = "time1";
            comboBox1.ValueMember = "id";
            comboBox1.DataSource = list;

        }

        private void button1_Click(object sender, EventArgs e)
        {
            var time = dateTimePicker1.Value;
            int timeid = int.Parse(comboBox1.SelectedValue.ToString());
            int aid = context.Accounts.Where(x => x.Username == Settings.UserName).Select(x => x.Id).SingleOrDefault();
            if (Settings.roleid == 1 || Settings.roleid == 2)
            {
                aid = -1;
            }
            var data = context.Bookings.Include(x => x.Table).Include(x => x.Time).
                Where(x => x.AccountId == (aid == -1 ? x.AccountId : aid) && x.Orderdate==time && x.TimeId== (timeid==-1?x.TimeId:timeid)).
                OrderByDescending(x => x.Orderdate).ToList();



            dataGridView1.Rows.Clear();
            foreach (var item in data)
            {
                var data1 = (System.DateTime)item.Orderdate;
                var date = data1.ToString("dd/MM/yyyy");
                dataGridView1.Rows.Add(item.Id, item.Table.Name, item.Table.Capacity, item.Table.Description, date, item.Time.Time1, item.Numberofpeople);
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            bindGrid(false);
        }
    }
}
