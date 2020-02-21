/* global QUnit */
QUnit.config.autostart = false;

sap.ui.getCore().attachInit(function () {
	"use strict";

	sap.ui.require([
		"Maintenance_Request_APPROVER_TWO/Maintenance_Request_APPROVER_TWO/test/integration/AllJourneys"
	], function () {
		QUnit.start();
	});
});