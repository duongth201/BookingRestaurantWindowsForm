
namespace Booking_Restaurant
{
    partial class MainGUI
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            menuStrip1 = new System.Windows.Forms.MenuStrip();
            fileToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            exitToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            bookingToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            registrationToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            manageTableToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            manageAccountToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            loginToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            toolStripContainer1 = new System.Windows.Forms.ToolStripContainer();
            toolStripContainer2 = new System.Windows.Forms.ToolStripContainer();
            menuStrip1.SuspendLayout();
            toolStripContainer1.SuspendLayout();
            toolStripContainer2.TopToolStripPanel.SuspendLayout();
            toolStripContainer2.SuspendLayout();
            SuspendLayout();
            // 
            // menuStrip1
            // 
            menuStrip1.Dock = System.Windows.Forms.DockStyle.None;
            menuStrip1.ImageScalingSize = new System.Drawing.Size(20, 20);
            menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] { fileToolStripMenuItem, bookingToolStripMenuItem, loginToolStripMenuItem });
            menuStrip1.Location = new System.Drawing.Point(0, 0);
            menuStrip1.Name = "menuStrip1";
            menuStrip1.Size = new System.Drawing.Size(700, 24);
            menuStrip1.TabIndex = 0;
            menuStrip1.Text = "menuStrip1";
            // 
            // fileToolStripMenuItem
            // 
            fileToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] { exitToolStripMenuItem });
            fileToolStripMenuItem.Name = "fileToolStripMenuItem";
            fileToolStripMenuItem.Size = new System.Drawing.Size(37, 20);
            fileToolStripMenuItem.Text = "File";
            // 
            // exitToolStripMenuItem
            // 
            exitToolStripMenuItem.Name = "exitToolStripMenuItem";
            exitToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            exitToolStripMenuItem.Text = "Exit";
            exitToolStripMenuItem.Click += exitToolStripMenuItem_Click;
            // 
            // bookingToolStripMenuItem
            // 
            bookingToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] { registrationToolStripMenuItem, manageTableToolStripMenuItem, manageAccountToolStripMenuItem });
            bookingToolStripMenuItem.Name = "bookingToolStripMenuItem";
            bookingToolStripMenuItem.Size = new System.Drawing.Size(63, 20);
            bookingToolStripMenuItem.Text = "Booking";
            bookingToolStripMenuItem.Click += bookingToolStripMenuItem_Click;
            // 
            // registrationToolStripMenuItem
            // 
            registrationToolStripMenuItem.Name = "registrationToolStripMenuItem";
            registrationToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            registrationToolStripMenuItem.Text = "Registration";
            registrationToolStripMenuItem.Click += registrationToolStripMenuItem_Click;
            // 
            // manageTableToolStripMenuItem
            // 
            manageTableToolStripMenuItem.Name = "manageTableToolStripMenuItem";
            manageTableToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            manageTableToolStripMenuItem.Text = "Manage Table";
            manageTableToolStripMenuItem.Click += manageTableToolStripMenuItem_Click;
            // 
            // manageAccountToolStripMenuItem
            // 
            manageAccountToolStripMenuItem.Name = "manageAccountToolStripMenuItem";
            manageAccountToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            manageAccountToolStripMenuItem.Text = "Manage Account";
            manageAccountToolStripMenuItem.Click += manageAccountToolStripMenuItem_Click;
            // 
            // loginToolStripMenuItem
            // 
            loginToolStripMenuItem.Name = "loginToolStripMenuItem";
            loginToolStripMenuItem.Size = new System.Drawing.Size(49, 20);
            loginToolStripMenuItem.Text = "Login";
            loginToolStripMenuItem.Click += loginToolStripMenuItem_Click;
            // 
            // toolStripContainer1
            // 
            // 
            // toolStripContainer1.ContentPanel
            // 
            toolStripContainer1.ContentPanel.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            toolStripContainer1.ContentPanel.Size = new System.Drawing.Size(700, 453);
            toolStripContainer1.Dock = System.Windows.Forms.DockStyle.Fill;
            toolStripContainer1.Location = new System.Drawing.Point(0, 0);
            toolStripContainer1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            toolStripContainer1.Name = "toolStripContainer1";
            toolStripContainer1.Size = new System.Drawing.Size(700, 478);
            toolStripContainer1.TabIndex = 1;
            toolStripContainer1.Text = "toolStripContainer1";
            // 
            // toolStripContainer2
            // 
            // 
            // toolStripContainer2.ContentPanel
            // 
            toolStripContainer2.ContentPanel.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            toolStripContainer2.ContentPanel.Size = new System.Drawing.Size(700, 454);
            toolStripContainer2.Dock = System.Windows.Forms.DockStyle.Fill;
            toolStripContainer2.Location = new System.Drawing.Point(0, 0);
            toolStripContainer2.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            toolStripContainer2.Name = "toolStripContainer2";
            toolStripContainer2.Size = new System.Drawing.Size(700, 478);
            toolStripContainer2.TabIndex = 2;
            toolStripContainer2.Text = "toolStripContainer2";
            // 
            // toolStripContainer2.TopToolStripPanel
            // 
            toolStripContainer2.TopToolStripPanel.Controls.Add(menuStrip1);
            // 
            // MainGUI
            // 
            AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            ClientSize = new System.Drawing.Size(700, 478);
            Controls.Add(toolStripContainer2);
            Controls.Add(toolStripContainer1);
            MainMenuStrip = menuStrip1;
            Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            Name = "MainGUI";
            Text = "Form1";
            Activated += MainGUI_Activated;
            menuStrip1.ResumeLayout(false);
            menuStrip1.PerformLayout();
            toolStripContainer1.ResumeLayout(false);
            toolStripContainer1.PerformLayout();
            toolStripContainer2.TopToolStripPanel.ResumeLayout(false);
            toolStripContainer2.TopToolStripPanel.PerformLayout();
            toolStripContainer2.ResumeLayout(false);
            toolStripContainer2.PerformLayout();
            ResumeLayout(false);
        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem fileToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem exitToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem bookingToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem loginToolStripMenuItem;
        private System.Windows.Forms.ToolStripContainer toolStripContainer1;
        private System.Windows.Forms.ToolStripContainer toolStripContainer2;
        private System.Windows.Forms.ToolStripMenuItem registrationToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem manageTableToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem manageAccountToolStripMenuItem;
    }
}

