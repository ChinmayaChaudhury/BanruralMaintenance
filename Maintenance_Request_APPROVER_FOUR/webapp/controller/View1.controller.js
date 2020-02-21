sap.ui.define([
	"sap/ui/core/mvc/Controller",
	"./Formatter",
	'sap/ui/model/json/JSONModel'
], function (Controller, Formatter, JSONModel) {
	"use strict";
	var dbrNo;
	return Controller.extend("Maintenance_Request_APPROVER_FOUR.Maintenance_Request_APPROVER_FOUR.controller.View1", {
		onInit: function () {

		},
		onPostComments: function (oEvent) {
			var x = 10;
			var that = this;

			var feed = that.getView().byId("feedinput").getValue();

			var comment = {
				/*"REPORTERID": sap.ushell.Container.getUser().getId().toUpperCase(),
				"REPORTER": sap.ushell.Container.getUser().getFullName(),*/
				"REPORTERID": that.getView().getModel("taskModel").getData().recipientUsers.filter(function (user) {
					return user != "joseph.sasikanth.reddy.byreddy@sap.com";
				})[0],
				"REPORTER": that.getView().getModel("taskModel").getData().recipientUsers.filter(function (user) {
					return user != "joseph.sasikanth.reddy.byreddy@sap.com";
				})[0],
				"DATETIME": new Date().getFullYear() + '-' + (new Date().getMonth() + 1) + '-' +
					new Date().getDate(),
				"COMMENTS": feed,
				"ROLE": "JOSE"
					// sap.ushell.Container.getUser().getFullName()
			};

			that.getView().oPropagatedProperties.oModels.undefined.oData.Comments.comments.push(comment);
			that.getView().oPropagatedProperties.oModels.undefined.refresh(true);

		},
		onChange: function (oEvent) {

			var x = 10;
			dbrNo = this.getView().oPropagatedProperties.oModels.undefined.oData.ID;
			// 			dbrNo = "10000";
			this.handleScreenshotUpload();

		},
		handleUploadStart: function (oEvent) {
			var oDialog = this.getView().byId("idBsyDialog");
			oDialog.open();
		},

		handleUploadProgress: function (oEvent) {
			sap.m.MessageBox.alert("upload in progress");
		},

		handleScreenshotUpload: function (oEvent) {

			var self = this;
			//self.handleUploadStart();
			//var id = self.getView().getModel().getProperty("/id/").toString();
			//dbrNo = Math.floor(Math.random() * 100000);

			/*if ((!this.getView().byId("idDetailPicTable").getVisible()) || (this.getView().getModel("PicModel").oData.screenshotcol.length < 2)) {*/

			var fileUploader = this.getView().byId("idScreenshot");

			var file = this.getView().byId("idScreenshot").mProperties.value;
			// var fileSize = jQuery.sap.domById(fileUploader.getId() + "-fu").files[0].size;

			if (file === "") {
				sap.m.MessageBox.alert("Select screenshot to upload.");
			} else {
				var fileName = jQuery.sap.domById(fileUploader.getId() + "-fu").files[0].name;
				var extension = fileName.split(".");
				var length = extension.length;
				/*if (extension[length - 1].toUpperCase() === "PNG" || extension[length - 1].toUpperCase() === "JPG" || extension[length - 1].toUpperCase() ===
					"JPEG" || extension[length - 1].toUpperCase() === "DOC" || extension[length - 1].toUpperCase() ===
					"DOCX" || extension[length - 1].toUpperCase() === "XLS" || extension[length - 1].toUpperCase() ===
					"XLSX") {*/
				fileUploader.setUploadUrl(
					"/Maintenance_Request_APPROVER_FOURMaintenance_Request_APPROVER_FOUR/DBR_DOC_UPLOAD/dbrRepoService/docService/Upload/" + dbrNo
				);
				fileUploader.setName(fileName);
				fileUploader.upload();

				var oDialog = this.getView().byId("idBsyDialog");
				oDialog.open();
				var that = this;

				/*} else {
					sap.m.MessageBox.alert("Only jpg, jpeg, png, doc,docx,xls,xlsx image types are supported.");
				}*/
			}
			/*} else {
				sap.m.MessageBox.alert("Already Uploaded Two Pics");
			}*/

			//this.handleUpldCmpltEditDoc();

		},

		handleUploadCompletePic: function (oEvent) {
			var self = this;

			//var id = self.getView().getModel().getProperty("/id/").toString();
			//dbrNo = Math.floor(Math.random() * 100000);
			//var dbrNo = this.getView().byId("idDbrNo1").getValue();
			//this.getView().byId("idPicTable").setVisible(true);
			self.getView().byId("idScreenshot").setName("");

			self.getAllPics(dbrNo);
			// self.getView().getModel("PicModel").refresh(true);
			var oDialog = self.getView().byId("idBsyDialog");
			oDialog.close();
			sap.m.MessageBox.alert("Upload complete");

			self.getView().byId("idScreenshot").setValue("");
			self.getView().byId("idDetailPicTable").setVisible(true);
		},

		getAllPics: function (dbrNo) {
			var self = this;
			var oModel = new JSONModel();
			$.ajax({
				// url: "/destinations/sdctechmohana/DBR_REPO_PACK/write.xsjs",
				// /Maintenance_Request_APPROVER_TWOMaintenance_Request_APPROVER_TWO
				url: "/Maintenance_Request_APPROVER_FOURMaintenance_Request_APPROVER_FOUR/DBR_DOC_UPLOAD/dbrRepoService/docService/getAllDoc",
				contentType: "application/json",
				async: false,
				type: 'GET',
				success: function (data) {

					var finalArr = [];

					var tempArr = data.documents;
					for (var i = 0; i < tempArr.length; i++) {
						var item = tempArr[i].name.split("_");
						var extension = tempArr[i].name.split(".");
						var length = extension.length;
						if (item[0] == dbrNo
							/* && (extension[length - 1].toUpperCase() === "PNG" || extension[length - 1].toUpperCase() ===
															"JPG" ||
															extension[length - 1].toUpperCase() === "JPEG" || extension[length - 1].toUpperCase() === "DOC" || extension[length - 1].toUpperCase() ===
															"DOCX" || extension[length - 1].toUpperCase() === "XLS" || extension[length - 1].toUpperCase() ===
															"XLSX")*/
						) {
							finalArr.push(tempArr[i]);
						}
					}

					if (finalArr.length > 0) {
						for (var i = 0; i < finalArr.length; i++) {
							if ((finalArr[i].name).includes("_"))

							{
								var x = (finalArr[i].name).split("_");
								finalArr[i].name = x[1];
							} else {
								finalArr[i].name = finalArr[i].name;
							}
						}
					}

					var date_sort_asc = function (a, b) {
						// This is a comparison function that will result in dates being sorted in
						// ASCENDING order. As you can see, JavaScript's native comparison operators
						// can be used to compare dates. This was news to me.
						if (a.creationDate > b.creationDate) {
							return 1;
						}
						if (a.creationDate < b.creationDate) {
							return -1;
						}
						return 0;
					};

					finalArr.sort(date_sort_asc);
					var splitArr = finalArr.slice((self.getView().oPropagatedProperties.oModels.undefined.oData.Documents.screenshotcol.length),
						finalArr.length);

					for (var n = 0; n < splitArr.length; n++) {

						// 		splitArr[n].Reporter = sap.ushell.Container.getUser().getId().toUpperCase() + " " + sap.ushell.Container.getUser().getFullName();
						splitArr[n].Reporter = self.getView().getModel("taskModel").getData().recipientUsers.filter(function (user) {
							return user != "joseph.sasikanth.reddy.byreddy@sap.com";
						})[0];
						splitArr[n].Role = self.getView().getModel("taskModel").getData().recipientUsers.filter(function (user) {
							return user != "joseph.sasikanth.reddy.byreddy@sap.com";
						})[0];
						self.getView().oPropagatedProperties.oModels.undefined.oData.Documents.screenshotcol.push(splitArr[n]);

					}

					self.getView().oPropagatedProperties.oModels.undefined.refresh(true);

					/*for (var i = 0; i < finalArr.length; i++) {

						self.getView().oPropagatedProperties.oModels.undefined.oData.Documents.screenshotcol.push(finalArr[i]);
						self.getView().oPropagatedProperties.oModels.undefined.refresh(true);

					}*/

					/*	var finalJSON = {
							"screenshotcol": finalArr
						};
						oModel.setData(finalJSON);
						self.getView().setModel(oModel, "PicModel");*/

				},
				error: function (error) {

				}
			});

		},

		handleUpldCmpltEditDoc: function (oEvent) {
			// var dbrNo = this.getView().byId("idDbrNo").getValue();
			var self = this;

			//var id = self.getView().getModel().getProperty("/id/").toString();
			this.getAllPics(dbrNo);

			var oDialog = this.getView().byId("idBsyDialog");
			oDialog.close();
			sap.m.MessageBox.success("Upload complete");
			this.getAllPics(dbrNo);
			self.getView().byId("idEditUploadDoc").setValue("");

		},

		handlePicDelete: function (oEvent) {

			// if (sap.m.MessageBox.confirm("Image would be deleted permanently and cannot be recovered.")) {
			var id = oEvent.getParameters().listItem.getBindingContext("PicModel").getObject().id;
			// var dbrNo = this.getView().byId("idDbrNo1").getValue();
			var row = oEvent.getParameters().listItem;
			// this.getView().byId("idPicTable").removeItem(row);
			var self = this;
			// sap.m.MessageBox.alert("Image would be deleted permanently and cannot be recovered.");

			$.ajax({

				url: "/Maintenance_Request_APPROVER_FOURMaintenance_Request_APPROVER_FOUR/DBR_DOC_UPLOAD/dbrRepoService/docService/delete/" +
					id,

				type: 'DELETE',

				success: function (response) {
					sap.m.MessageBox.success("Deleted successfully");

					var arr = self.getView().byId("idDetailPicTable").getModel("PicModel").oData.screenshotcol;
					var finalArr = [];

					for (var i = 0; i < arr.length; i++) {
						if (arr[i].id !== response) {
							finalArr.push(arr[i]);
						}
					}
					if (finalArr.length < 1) {

						self.getView().byId("idDetailPicTable").setVisible(false);

					}
					var finalJSON = {
						"screenshotcol": finalArr
					};

					self.getView().byId("idDetailPicTable").getModel("PicModel").setData(finalJSON);
					// that.getView().byId("idDetailPicTable").getModel("PicModel").refresh(true);

				},
				error: function (jqXHR, textStatus, errorThrown) {
					sap.m.MessageToast.show("Error");

				}
			});
			// }

		}
	});
});