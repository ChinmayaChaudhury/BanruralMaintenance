sap.ui.define(function () {
	"use strict";

	var Formatter = {

		picPath: function (name) {
			try {
				if (name == undefined) {
					return name;
				} else {
					var len = name.split("/").length;
					var tempName = name.split("/")[len - 1];
					var url = window.location.origin +
						"/Maintenance_Request_APPROVER_ONEMaintenance_Request_APPROVER_ONE/DBR_DOC_UPLOAD/dbrRepoService/cmis/json/f1bfc294a7daca34ea9af8b5/root/" +
						tempName;
					return url;
				}

			} catch (err) {
				return false;
			}
		},
		datetrim: function (date) {

			var x = 10;
			if (date != null) {

				return new Date(date).toLocaleDateString('en-GB');
			}

		}
	};

	return Formatter;

}, /* bExport= */ true);