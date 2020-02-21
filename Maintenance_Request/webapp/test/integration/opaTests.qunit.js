/* global QUnit */
QUnit.config.autostart = false;

sap.ui.getCore().attachInit(function () {
	"use strict";

	sap.ui.require([
		"Maintenance_Request/Maintenance_Request/test/integration/AllJourneys"
	], function () {
		QUnit.start();
	});
});