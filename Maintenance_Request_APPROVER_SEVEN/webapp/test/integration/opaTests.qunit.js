/* global QUnit */
QUnit.config.autostart = false;

sap.ui.getCore().attachInit(function () {
	"use strict";

	sap.ui.require([
		"Maintenance_Request_APPROVER_SEVEN/Maintenance_Request_APPROVER_SEVEN/test/integration/AllJourneys"
	], function () {
		QUnit.start();
	});
});