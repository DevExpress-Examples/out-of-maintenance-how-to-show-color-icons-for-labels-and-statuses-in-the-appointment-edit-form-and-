/*
{************************************************************************************}
{                                                                                    }
{   DO NOT MODIFY THIS FILE!                                                         }
{                                                                                    }
{   It will be overwritten without prompting when a new version becomes              }
{   available. All your changes will be lost.                                        }
{                                                                                    }
{   This file contains the default template and is required for the appointment      }
{   rendering. Improper modifications may result in incorrect appearance of the      }
{   appointment.                                                                     }
{                                                                                    }
{   In order to create and use your own custom template, perform the following       }
{   steps:                                                                           }
{       1. Save a copy of this file with a different name in another location.       }
{       2. Add a Register tag in the .aspx page header for each template you use,    }
{          as follows: <%@ Register Src="PathToTemplateFile" TagName="NameOfTemplate"}
{          TagPrefix="ShortNameOfTemplate" %>                                        }
{       3. In the .aspx page find the tags for different scheduler views within      }
{          the ASPxScheduler control tag. Insert template tags into the tags         }
{          for the views which should be customized.                                 }
{          The template tag should satisfy the following pattern:                    }
{          <Templates>                                                               }
{              <HorizontalSameDayAppointmentTemplate>                                }
{                  < ShortNameOfTemplate: NameOfTemplate runat="server"/>            }
{              </HorizontalSameDayAppointmentTemplate>                               }
{          </Templates>                                                              }
{          where ShortNameOfTemplate, NameOfTemplate are the names of the            }
{          registered templates, defined in step 2.                                  }
{************************************************************************************}
 */

using System;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using DevExpress.Web.Internal;
using DevExpress.Web.ASPxScheduler;
using DevExpress.Web.ASPxScheduler.Drawing;
using DevExpress.Web.ASPxScheduler.Internal;

public partial class HorizontalSameDayAppointmentTemplate : DevExpress.Web.ASPxScheduler.SchedulerUserControl {
	HorizontalAppointmentTemplateContainer Container { get { return (HorizontalAppointmentTemplateContainer)Parent; } }
	HorizontalAppointmentTemplateItems Items { get { return Container.Items; } }

    protected override void OnLoad(EventArgs e) {
        base.OnLoad(e);
        appointmentDiv.Style.Value = Items.AppointmentStyle.GetStyleAttributes(Page).Value;

        lblStartTime.ControlStyle.MergeWith(Items.StartTimeText.Style);
        lblEndTime.ControlStyle.MergeWith(Items.EndTimeText.Style);
        lblTitle.ControlStyle.MergeWith(Items.Title.Style);

        PrepareContainers();
        LayoutAppointmentImages();

        statusContainer.Controls.Add(Container.Items.StatusControl);
        startTimeClockContainer.Controls.Add(Container.Items.StartTimeClock);
        endTimeClockContainer.Controls.Add(Container.Items.EndTimeClock);
    }
    protected override void PrepareControls(ASPxScheduler scheduler) {
        lblStartTime.ParentSkinOwner = scheduler;
        lblEndTime.ParentSkinOwner = scheduler;
        lblTitle.ParentSkinOwner = scheduler;
    }
    void PrepareContainers() {
        RenderUtils.SetTableSpacings(imageContainer, 1, 0);
        RenderUtils.SetAlignAttributes(statusContainer, null, "top");
    }
	void LayoutAppointmentImages() {
		int count = Items.Images.Count;
		HtmlTableRow row = new HtmlTableRow();
        row.Cells.Add(CreateImageCell());
		for (int i = 0; i < count; i++) {
            HtmlTableCell cell = CreateImageCell();
			AddImage(cell, Items.Images[i]);
			row.Cells.Add(cell);
		}
		imageContainer.Rows.Add(row);
	}
    HtmlTableCell CreateImageCell() {
        HtmlTableCell cell = new HtmlTableCell();
        cell.Attributes.Add("class", "dxscCellWithPadding");
        return cell;
    }
	void AddImage(HtmlTableCell targetCell, AppointmentImageItem imageItem) {
		Image image = new Image();
		imageItem.ImageProperties.AssignToControl(image, false);
        SchedulerWebEventHelper.AddOnDragStartEvent(image, ASPxSchedulerScripts.GetPreventOnDragStart());
		targetCell.Controls.Add(image);
	}
	
}
