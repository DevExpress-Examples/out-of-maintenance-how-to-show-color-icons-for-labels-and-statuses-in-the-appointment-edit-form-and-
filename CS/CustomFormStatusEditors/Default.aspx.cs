using DevExpress.Web;
using DevExpress.Web.ASPxScheduler;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;

namespace CustomFormStatusEditors
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ASPxScheduler1_PopupMenuShowing(object sender, PopupMenuShowingEventArgs e)
        {
            if(e.Menu.MenuId == DevExpress.XtraScheduler.SchedulerMenuItemId.AppointmentMenu)
            {
                MenuItem statusMenuItem = e.Menu.Items.FindByName("StatusSubMenu");
                foreach (MenuItem statusItem in statusMenuItem.Items)
                    AssignImageUrl(statusItem, "StatusImages");

                MenuItem labelMenuItem = e.Menu.Items.FindByName("LabelSubMenu");
                foreach (MenuItem labelItem in labelMenuItem.Items)
                    AssignImageUrl(labelItem, "LabelImages");
            }
        }
        private void AssignImageUrl(MenuItem item, string folderName)
        {
            string imageUrl = String.Format("~/Images/{0}/{1}.png", folderName, item.Text);
            if (item.Image.Url == String.Empty)
                item.Image.Url = imageUrl;
        }
    }
}