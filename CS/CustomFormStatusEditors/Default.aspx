<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CustomFormStatusEditors.Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxScheduler.v15.2, Version=15.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxScheduler" TagPrefix="dxwschs" %>
<%@ Register Assembly="DevExpress.XtraScheduler.v15.2.Core, Version=15.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraScheduler" TagPrefix="cc1" %>
<%@ Register Assembly="DevExpress.Web.v15.2, Version=15.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <dxwschs:ASPxScheduler ID="ASPxScheduler1" runat="server" AppointmentDataSourceID="SqlDataSource1" ClientIDMode="AutoID" GroupType="Resource" 
                ResourceDataSourceID="SqlDataSource2" Start="2016-02-10" OnPopupMenuShowing="ASPxScheduler1_PopupMenuShowing">
                <Storage>
                    <Appointments AutoRetrieveId="True">
                        <Mappings AllDay="AllDay" AppointmentId="ID" Description="Description" End="EndTime" Label="Label" Location="Location" RecurrenceInfo="RecurrenceInfo" ReminderInfo="ReminderInfo" ResourceId="CarId" Start="StartTime" Status="Status" Subject="Subject" Type="EventType" />
                    </Appointments>
                    <Resources>
                        <Mappings Caption="Model" Image="Picture" ResourceId="ID" />
                    </Resources>
                </Storage>
                <Views>
                    <DayView ResourcesPerPage="1">
                        <TimeRulers>
                            <cc1:TimeRuler></cc1:TimeRuler>
                        </TimeRulers>
                    </DayView>

                    <WorkWeekView>
                        <TimeRulers>
                            <cc1:TimeRuler></cc1:TimeRuler>
                        </TimeRulers>
                    </WorkWeekView>

                    <WeekView Enabled="false">
                    </WeekView>
                    <FullWeekView Enabled="true">
                        <TimeRulers>
                            <cc1:TimeRuler></cc1:TimeRuler>
                        </TimeRulers>
                    </FullWeekView>
                </Views>
                <OptionsForms AppointmentFormTemplateUrl="~/CustomForms/CusomAppointmentForm.ascx" />
            </dxwschs:ASPxScheduler>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ID], [Picture], [Model] FROM [Cars]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [CarScheduling] WHERE [ID] = @ID" InsertCommand="INSERT INTO [CarScheduling] ([CarId], [UserId], [Status], [Subject], [Description], [Label], [StartTime], [EndTime], [Location], [AllDay], [EventType], [RecurrenceInfo], [ReminderInfo], [Price], [ContactInfo]) VALUES (@CarId, @UserId, @Status, @Subject, @Description, @Label, @StartTime, @EndTime, @Location, @AllDay, @EventType, @RecurrenceInfo, @ReminderInfo, @Price, @ContactInfo)" SelectCommand="SELECT * FROM [CarScheduling]" UpdateCommand="UPDATE [CarScheduling] SET [CarId] = @CarId, [UserId] = @UserId, [Status] = @Status, [Subject] = @Subject, [Description] = @Description, [Label] = @Label, [StartTime] = @StartTime, [EndTime] = @EndTime, [Location] = @Location, [AllDay] = @AllDay, [EventType] = @EventType, [RecurrenceInfo] = @RecurrenceInfo, [ReminderInfo] = @ReminderInfo, [Price] = @Price, [ContactInfo] = @ContactInfo WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CarId" Type="Int32" />
                    <asp:Parameter Name="UserId" Type="Int32" />
                    <asp:Parameter Name="Status" Type="Int32" />
                    <asp:Parameter Name="Subject" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Label" Type="Int32" />
                    <asp:Parameter Name="StartTime" Type="DateTime" />
                    <asp:Parameter Name="EndTime" Type="DateTime" />
                    <asp:Parameter Name="Location" Type="String" />
                    <asp:Parameter Name="AllDay" Type="Boolean" />
                    <asp:Parameter Name="EventType" Type="Int32" />
                    <asp:Parameter Name="RecurrenceInfo" Type="String" />
                    <asp:Parameter Name="ReminderInfo" Type="String" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="ContactInfo" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CarId" Type="Int32" />
                    <asp:Parameter Name="UserId" Type="Int32" />
                    <asp:Parameter Name="Status" Type="Int32" />
                    <asp:Parameter Name="Subject" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Label" Type="Int32" />
                    <asp:Parameter Name="StartTime" Type="DateTime" />
                    <asp:Parameter Name="EndTime" Type="DateTime" />
                    <asp:Parameter Name="Location" Type="String" />
                    <asp:Parameter Name="AllDay" Type="Boolean" />
                    <asp:Parameter Name="EventType" Type="Int32" />
                    <asp:Parameter Name="RecurrenceInfo" Type="String" />
                    <asp:Parameter Name="ReminderInfo" Type="String" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="ContactInfo" Type="String" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
