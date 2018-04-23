using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web.ASPxScheduler;
using DevExpress.Web.ASPxScheduler.Localization;

public partial class AppointmentDragToolTip : ASPxSchedulerToolTipBase {
    public override string ClassName { get { return "ASPxClientAppointmentDragTooltip"; } }
    public override bool ToolTipShowStem { get { return true; } }

    protected override void OnLoad(EventArgs e) {
        base.OnLoad(e);
        Localize();
    }
    protected override void PrepareControls(ASPxScheduler scheduler) {
        lblInfo.ParentSkinOwner = scheduler;
        lblInterval.ParentSkinOwner = scheduler;
    }
    void Localize() {
        lblInfo.Text = ASPxSchedulerLocalizer.GetString(ASPxSchedulerStringId.Caption_OperationToolTip);
    }    
    protected override Control[] GetChildControls() {
        Control[] controls = new Control[] { lblInterval };
        return controls;
    }
}
