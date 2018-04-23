/*
{************************************************************************************}
{                                                                                    }
{   DO NOT MODIFY THIS FILE!                                                         }
{                                                                                    }
{   It will be overwritten without prompting when a new version becomes              }
{   available. All your changes will be lost.                                        }
{                                                                                    }
{   This file contains the default template and is required for the form             }
{   rendering. Improper modifications may result in incorrect behavior of            }
{   the appointment form.                                                            }
{                                                                                    }
{   In order to create and use your own custom template, perform the following       }
{   steps:                                                                           }
{       1. Save a copy of this file with a different name in another location.       }
{       2. Specify the file location as the                                          }
{          'OptionsForms.RecurrentAppointmentEditFormTemplateUrl'                    }
{          property of the ASPxScheduler control.                                    }
{       3. If you need to display and process additional controls, you               }
{          should accomplish steps 4-6; otherwise, go to step 7.                     }
{       4. Create a class, derived from the                                          }
{          RecurrentAppointmentEditFormTemplateContainer,                            }
{          containing additional properties which correspond to your controls.       }
{          This class definition can be located within a class file in the App_Code  }
{          folder.                                                                   }
{       5. Replace RecurrentAppointmentEditFormTemplateContainer references in the   }
{          template page with the name of the class you've created in step 4.        }
{       6. Handle the RecurrentAppointmentEditFormShowing event to create an         }
{          instance of the  template container class, defined in step 5, and specify }
{          it as the destination container  instead of the  default one.             }
{       7. Modify the overall appearance of the page and its layout.                 }
{                                                                                    }
{************************************************************************************}
*/

using System;
using DevExpress.Web.ASPxScheduler;
using DevExpress.Web;
using DevExpress.Web.ASPxScheduler.Localization;

public partial class RecurrentAppointmentEditForm : SchedulerFormControl {
    protected override void OnLoad(EventArgs e) {
        base.OnLoad(e);
        rbAction.SelectedIndex = 0;
        Localize();
	}

    public override void DataBind() {
        base.DataBind();
        Localize((RecurrentAppointmentEditFormTemplateContainer)Parent);
        AssignStatusImage(Image);
        SubscribeButtons();
    }
    void Localize() {
        btnOk.Text = ASPxSchedulerLocalizer.GetString(ASPxSchedulerStringId.Form_ButtonOk);
        btnCancel.Text = ASPxSchedulerLocalizer.GetString(ASPxSchedulerStringId.Form_ButtonCancel);

        if (rbAction.Items.Count == 2) {
            ListEditItem seriesItem = rbAction.Items[0];
            seriesItem.Text = ASPxSchedulerLocalizer.GetString(ASPxSchedulerStringId.Form_Series);
            ListEditItem occurrenceItem = rbAction.Items[1];
            occurrenceItem.Text = ASPxSchedulerLocalizer.GetString(ASPxSchedulerStringId.Form_Occurrence);
        }        
    }
    void Localize(RecurrentAppointmentEditFormTemplateContainer container) {
        string formatString = ASPxSchedulerLocalizer.GetString(ASPxSchedulerStringId.Form_ConfirmEdit);
        lblConfirm.Text = String.Format(formatString, container.Appointment.Subject);
    }
    void AssignStatusImage(ASPxImage image) {
        RecurrentAppointmentEditFormTemplateContainer container = (RecurrentAppointmentEditFormTemplateContainer)Parent;
        ASPxSchedulerImages images = container.Control.Images;
        image.SpriteCssClass = images.GetStatusInfoImage(Page).SpriteProperties.CssClass;
        image.SpriteImageUrl = images.SpriteImageUrl;
    }
    void SubscribeButtons() {
        RecurrentAppointmentEditFormTemplateContainer container = (RecurrentAppointmentEditFormTemplateContainer)Parent;
        this.btnOk.ClientSideEvents.Click = container.ApplyHandler;
        this.btnCancel.ClientSideEvents.Click = container.CancelHandler;
    }
	protected override ASPxEditBase[] GetChildEditors() {
		ASPxEditBase[] edits = new ASPxEditBase[] { lblConfirm, rbAction };
		return edits;
	}
	protected override ASPxButton[] GetChildButtons() {
		ASPxButton[] buttons = new ASPxButton[] {
			btnOk, btnCancel
		};
		return buttons;
	}
}
