sap.ui.define([
	"sap/ui/core/UIComponent",
	"sap/ui/Device",
	"Maintenance_Request_APPROVER_FOUR/Maintenance_Request_APPROVER_FOUR/model/models"
], function (UIComponent, Device, models) {
	"use strict";

	return UIComponent.extend("Maintenance_Request_APPROVER_FOUR.Maintenance_Request_APPROVER_FOUR.Component", {

		metadata: {
			manifest: "json"
		},

		/**
		 * The component is initialized by UI5 automatically during the startup of the app and calls the init method once.
		 * @public
		 * @override
		 */
		init: function () {
			// call the base component's init function
			UIComponent.prototype.init.apply(this, arguments);

			// enable routing
			this.getRouter().initialize();

			// set the device model
			this.setModel(models.createDeviceModel(), "device");
			var that = this;
			var startupParameters = this.getComponentData().startupParameters;
			var taskModel = startupParameters.taskModel;
			var taskId = taskModel.getData().InstanceID;
			var contextModel = new sap.ui.model.json.JSONModel(
				"/Maintenance_Request_APPROVER_FOURMaintenance_Request_APPROVER_FOUR/bpmworkflowruntime/v1/task-instances/" + taskId +
				"/context");
			contextModel.setDefaultBindingMode(sap.ui.model.BindingMode.TwoWay);
			this.setModel(contextModel);
			var taskModel = new sap.ui.model.json.JSONModel(
				"/Maintenance_Request_APPROVER_FOURMaintenance_Request_APPROVER_FOUR/bpmworkflowruntime/v1/task-instances/" + taskId);
			taskModel.setDefaultBindingMode(sap.ui.model.BindingMode.TwoWay);
			this.setModel(taskModel, "taskModel");
			contextModel.getData().taskData = taskModel.getData();
			contextModel.refresh(true);
			var resourceBundle = this.getModel("i18n").getResourceBundle();

			startupParameters.inboxAPI.addAction({
				action: "APPROVE",
				label: resourceBundle.getText("Enviar")
			}, function (button) {
				this._completeTask(taskId, true, jQuery.proxy(
					// Call a local method to refresh the task list in My Inbox
					that._refreshTask(taskId), that));
			}, this);
			/*startupParameters.inboxAPI.addAction({
				action: "REJECT",
				label: resourceBundle.getText("Externo")
			}, function (button) {
				this._completeTask(taskId, false);
			}, this);*/

			// 			this._refreshTask(taskId);

		},
		_completeTask: function (taskId, approvalStatus, refreshTask) {
			var token = this._fetchToken(),
				self = this,
				context = self.getModel().getData();
			context.jose_approval_status = approvalStatus;
			var data = {
				status: "COMPLETED",
				context: context
			};
			$.ajax({
				url: "/Maintenance_Request_APPROVER_FOURMaintenance_Request_APPROVER_FOUR/bpmworkflowruntime/v1/task-instances/" + taskId,
				method: "PATCH",
				contentType: "application/json",
				async: false,
				// data: "{\"status\": \"COMPLETED\", \"context\": {\"approved\":" + approvalStatus + "}}",
				data: JSON.stringify(data),

				headers: {
					"X-CSRF-Token": token
				},
				// refreshTask needs to be called on successful completion 
				success: refreshTask
			});
		},
		_fetchToken: function () {
			var token;
			$.ajax({
				url: "/Maintenance_Request_APPROVER_FOURMaintenance_Request_APPROVER_FOUR/bpmworkflowruntime/v1/xsrf-token",
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
		},

		_refreshTask: function (taskId) {
			this.getComponentData().startupParameters.inboxAPI.updateTask("NA", taskId);
		}
	});
});