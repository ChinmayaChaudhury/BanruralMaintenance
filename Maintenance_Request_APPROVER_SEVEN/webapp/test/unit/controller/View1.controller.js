/*global QUnit*/

sap.ui.define([
	"Maintenance_Request_APPROVER_SEVEN/Maintenance_Request_APPROVER_SEVEN/controller/View1.controller"
], function (Controller) {
	"use strict";

	QUnit.module("View1 Controller");

	QUnit.test("I should test the View1 controller", function (assert) {
		var oAppController = new Controller();
		oAppController.onInit();
		assert.ok(oAppController);
	});

});