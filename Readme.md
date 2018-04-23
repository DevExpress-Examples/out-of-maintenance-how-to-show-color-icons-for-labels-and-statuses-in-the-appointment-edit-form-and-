# How to show color icons for labels and statuses in the Appointment Edit Form and Popup Menu


<p>By default, the <strong>Show Time As</strong> and <strong>Label As</strong> popup menu items, and label and status editors in the Appointment Edit Form provide only a text description of the corresponding labels and statuses. This example illustrates how to enhance the appearance of the built-in Label and Status editors, and show icons reflecting exact label/status colors in these cases. All required images for the built-in Labels and Statuses are located in the <strong>Image</strong> folder of the example. </p>
<p>To show icons for the menu items of the Popup Menu, handle the <a href="https://documentation.devexpress.com/AspNet/DevExpressWebASPxSchedulerASPxScheduler_PopupMenuShowingtopic.aspx">ASPxScheduler.PopupMenuShowing</a> event and assign an image path to the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebImagePropertiesBase_Urltopic">MenuItem.Image.Url</a> property of the required menu items.<br>To show color icons for the label and status editors in the Appointment Edit Form, create a custom edit form, and assign the Url value to the<a href="https://documentation.devexpress.com/#AspNet/DevExpressWebListEditItem_ImageUrltopic"> ListEditItem.ImageUrl</a> property for each item of the label and status ASPxComboBox controls.<br><br>Refer to the <a href="https://documentation.devexpress.com/#AspNet/CustomDocument3848">How to: Customize a Form Using Templates</a> documentation article describing the standard approach of the appointment edit form customization.</p>

<br/>


