<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128547661/15.2.5%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T344486)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [CusomAppointmentForm.ascx](./CS/CustomFormStatusEditors/CustomForms/CusomAppointmentForm.ascx) (VB: [CusomAppointmentForm.ascx](./VB/CustomFormStatusEditors/CustomForms/CusomAppointmentForm.ascx))
* [CusomAppointmentForm.ascx.cs](./CS/CustomFormStatusEditors/CustomForms/CusomAppointmentForm.ascx.cs) (VB: [CusomAppointmentForm.ascx.vb](./VB/CustomFormStatusEditors/CustomForms/CusomAppointmentForm.ascx.vb))
* **[Default.aspx](./CS/CustomFormStatusEditors/Default.aspx) (VB: [Default.aspx](./VB/CustomFormStatusEditors/Default.aspx))**
* [Default.aspx.cs](./CS/CustomFormStatusEditors/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/CustomFormStatusEditors/Default.aspx.vb))
<!-- default file list end -->
# How to show color icons for labels and statuses in the Appointment Edit Form and Popup Menu


<p>By default, the <strong>Show Time As</strong> and <strong>Label As</strong> popup menu items, and label and status editors in the Appointment Edit Form provide only a text description of the corresponding labels and statuses. This example illustrates how to enhance the appearance of the built-in Label and Status editors, and show icons reflecting exact label/status colors in these cases. All required images for the built-in Labels and Statuses are located in the <strong>Image</strong> folder of the example. </p>
<p>To show icons for the menu items of the Popup Menu, handle the <a href="https://documentation.devexpress.com/AspNet/DevExpressWebASPxSchedulerASPxScheduler_PopupMenuShowingtopic.aspx">ASPxScheduler.PopupMenuShowing</a> event and assign an image path to the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebImagePropertiesBase_Urltopic">MenuItem.Image.Url</a> property of the required menu items.<br>To show color icons for the label and status editors in the Appointment Edit Form, create a custom edit form, and assign the Url value to the<a href="https://documentation.devexpress.com/#AspNet/DevExpressWebListEditItem_ImageUrltopic"> ListEditItem.ImageUrl</a> property for each item of the label and status ASPxComboBox controls.<br><br>Refer to the <a href="https://documentation.devexpress.com/#AspNet/CustomDocument3848">How to: Customize a Form Using Templates</a> documentation article describing the standard approach of the appointment edit form customization.</p>

<br/>


