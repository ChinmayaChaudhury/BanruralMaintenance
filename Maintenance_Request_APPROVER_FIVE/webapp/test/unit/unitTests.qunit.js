/* global QUnit */
QUnit.config.autostart = false;

sap.ui.getCore().attachInit(function () {
	"use strict";

	sap.ui.require([
		"Maintenance_Request_APPROVER_FIVE/Maintenance_Request_APPROVER_FIVE/test/unit/AllTests"
	], function () {
		QUnit.start();
	});
});