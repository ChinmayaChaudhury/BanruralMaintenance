/* global QUnit */
QUnit.config.autostart = false;

sap.ui.getCore().attachInit(function () {
	"use strict";

	sap.ui.require([
		"Maintenance_Request_APPROVER_THREE/Maintenance_Request_APPROVER_THREE/test/integration/AllJourneys"
	], function () {
		QUnit.start();
	});
});