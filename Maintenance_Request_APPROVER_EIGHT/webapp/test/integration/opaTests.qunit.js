/* global QUnit */
QUnit.config.autostart = false;

sap.ui.getCore().attachInit(function () {
	"use strict";

	sap.ui.require([
		"Maintenance_Request_APPROVER_EIGHT/Maintenance_Request_APPROVER_EIGHT/test/integration/AllJourneys"
	], function () {
		QUnit.start();
	});
});