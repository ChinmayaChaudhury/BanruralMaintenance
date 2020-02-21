sap.ui.define([
	"sap/ui/core/mvc/Controller",
	"sap/m/MessageToast"
], function (Controller, MessageToast) {
	"use strict";

	return Controller.extend("Maintenance_Request.Maintenance_Request.controller.View1", {
		onInit: function () {
			this.getView().setModel(new sap.ui.model.json.JSONModel({
				text: "",
				category: "",
				description: "",
				result: ""
			}));
		},
		startWorkflow: function () {
			var token = this._fetchToken();
			this._startInstance(token);
		},
		_startInstance: function (token) {
			var model = this.getView().getModel();
			var category = model.getProperty("/category");
			var description = model.getProperty("/description");
			$.ajax({
				url: "/Maintenance_RequestMaintenance_Request/bpmworkflowruntime/v1/workflow-instances",
				method: "POST",
				async: false,
				contentType: "application/json",
				headers: {
					"X-CSRF-Token": token
				},
				data: JSON.stringify({
					definitionId: "banrural_wf",
					context: {
						category: category,
						description: description,
						diana_approval_status: "",
						pedro_initial_approval_status: "",
						miguel_approval_status: "",
						jose_approval_status: "",
						pedro_miguel_approval_status: "",
						pedro_jose_approval_status: "",
						jose_second_approval_status: "",
						pedro_final_approval_status: "",
						datetime: "",
						Comments: {
							comments: []
						},
						Documents: {
							screenshotcol: []
						},
						ID: Math.floor(Math.random() * 100000)
					}
				}),
				success: function (result, xhr, data) {

					// 	model.setProperty("/result", JSON.stringify(result, null, 4));
					MessageToast.show("Requested Created Successfully");
				}
			});
		},
		_fetchToken: function () {
			var token;
			$.ajax({
				url: "/Maintenance_RequestMaintenance_Request/bpmworkflowruntime/v1/xsrf-token",
				method: "GET",
				async: false,
				headers: {
					"X-CSRF-Token": "Fetch"
				},
				success: function (result, xhr, data) {
					token = data.getResponseHeader("X-CSRF-Token");
				}
			});
			return token;
		}
	});
});