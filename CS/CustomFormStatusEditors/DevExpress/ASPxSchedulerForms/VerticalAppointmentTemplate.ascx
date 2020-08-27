<%--
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
{              <VerticalAppointmentTemplate>                                         }
{                  < ShortNameOfTemplate: NameOfTemplate runat="server"/>            }
{              </VerticalAppointmentTemplate>                                        }
{          </Templates>                                                              }
{          where ShortNameOfTemplate, NameOfTemplate are the names of the            }
{          registered templates, defined in step 2.                                  }
{************************************************************************************}
--%>
<%@ Control Language="C#" AutoEventWireup="true" Inherits="VerticalAppointmentTemplate" Codebehind="VerticalAppointmentTemplate.ascx.cs" %>

<%@ Register Assembly="DevExpress.Web.ASPxScheduler.v15.2, Version=15.2.20.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxScheduler" TagPrefix="dxwschs" %>
<%@ Register Assembly="DevExpress.Web.v15.2, Version=15.2.20.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<div id="appointmentDiv" runat="server" class='<%#((VerticalAppointmentTemplateContainer)Container).Items.AppointmentStyle.CssClass %>'>
    <table <%= DevExpress.Web.Internal.RenderUtils.GetTableSpacings(this, 0, 0) %> style="width: 100%">
        <tr <%= DevExpress.Web.Internal.RenderUtils.GetAlignAttributes(this, null, "top") %> style="vertical-align: top">
            <td runat="server" id="statusContainer">    
            </td>
            <td style="width:100%">
                <table <%= DevExpress.Web.Internal.RenderUtils.GetTableSpacings(this, 1, 0) %> style="width: 100%">
                    <tr <%= DevExpress.Web.Internal.RenderUtils.GetAlignAttributes(this, null, "top") %> style="vertical-align: top">
                        <td class="dxscCellWithPadding">
                            <table id="imageContainer" runat="server" style="text-align: center">
                                <tr><td class="dxscCellWithPadding"></td></tr>
                            </table>
                        </td>
                        <td class="dxscCellWithPadding" style="width:100%">                    
                            <table <%= DevExpress.Web.Internal.RenderUtils.GetTableSpacings(this, 1, 0) %> style="width: 100%">                        
                                <tr>
                                    <td class="dxscCellWithPadding">
                                        <dx:ASPxLabel runat="server" EnableViewState="false" EncodeHtml="true" ID="lblStartTime" Text='<%#((VerticalAppointmentTemplateContainer)Container).Items.StartTimeText.Text%>' Visible='<%#((VerticalAppointmentTemplateContainer)Container).Items.StartTimeText.Visible%>'></dx:ASPxLabel>
                                        <dx:ASPxLabel runat="server" EnableViewState="false" EncodeHtml="true" ID="lblEndTime" Text='<%#((VerticalAppointmentTemplateContainer)Container).Items.EndTimeText.Text%>' Visible='<%#((VerticalAppointmentTemplateContainer)Container).Items.EndTimeText.Visible%>'></dx:ASPxLabel>        
                                        <dx:ASPxLabel runat="server" EnableViewState="false" EncodeHtml="true" ID="lblTitle" Text='<%#((VerticalAppointmentTemplateContainer)Container).Items.Title.Text%>'></dx:ASPxLabel>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="dxscCellWithPadding">
                                        <div runat="server" id="horizontalSeparator" class='<%#((VerticalAppointmentTemplateContainer)Container).Items.HorizontalSeparator.Style.CssClass %>' visible='<%#((VerticalAppointmentTemplateContainer)Container).Items.HorizontalSeparator.Visible%>'></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="dxscCellWithPadding">
                                        <dx:ASPxLabel runat="server" EnableViewState="false" EncodeHtml="true" ID="lblDescription" Text='<%#((VerticalAppointmentTemplateContainer)Container).Items.Description.Text%>'></dx:ASPxLabel>
                                    </td>        
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</div>