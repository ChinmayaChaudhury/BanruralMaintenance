{
	"contents": {
		"b42b36d8-561b-4c6a-8096-98ae2eff2ecf": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "banrural_wf",
			"subject": "Banrural_WF",
			"businessKey": "banrural",
			"name": "Banrural_WF",
			"lastIds": "8fa8cf23-b68b-4ee1-a926-9f89525e5fe4",
			"events": {
				"dfd63014-2db5-4bbc-b8eb-87a9e8aed272": {
					"name": "StartEvent1"
				},
				"90ebb779-409b-4a5c-a824-3637d280ea9c": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"ba3ca032-ac9e-42ac-b717-c2da613dfba8": {
					"name": "Analyse Request"
				},
				"42c546a1-68e9-45cd-9ea8-833dd0a5a253": {
					"name": "Identify Supplier"
				},
				"89131e49-2e93-4885-b06c-66def7822bc3": {
					"name": "ExclusiveGateway3"
				},
				"e17767a3-78cf-4d63-887f-715f549901a1": {
					"name": "Execute Internal Maintenance"
				},
				"03798a8a-52bb-403a-8050-a3621e9303ca": {
					"name": "Rejection Mail"
				},
				"7b0d75ac-2327-4cb2-97b1-caeaf99c93b1": {
					"name": "ExclusiveGateway4"
				},
				"b317bac1-be01-4548-8a82-b07d087a5697": {
					"name": "Request Quote"
				},
				"31cb79d2-14c6-4e5c-aba1-297d233807bb": {
					"name": "Schedule External Maintenance"
				},
				"825a60e9-67b0-4946-a505-e93fee590307": {
					"name": "Verify Maintenance"
				},
				"5f4b56d3-651b-48c7-8139-7f8742555fc1": {
					"name": "ExclusiveGateway7"
				},
				"c4844d4a-ebfa-4ee4-ba8d-1d4c326d8b3c": {
					"name": "ExclusiveGateway8"
				},
				"dc48cb32-f4bb-43a5-bb3c-974d50bafe47": {
					"name": "Execute External Maintenance"
				},
				"9506647e-0b09-47a5-939c-3b953d44a1ea": {
					"name": "Verify Maintenance"
				},
				"3ed61a3c-df80-4965-96a6-7a7404720221": {
					"name": "ExclusiveGateway9"
				}
			},
			"sequenceFlows": {
				"0c97b345-5d0a-4272-a95f-ef0855438c31": {
					"name": "SequenceFlow1"
				},
				"ba43221d-35ba-4929-92fd-bc93df05aa0a": {
					"name": "SequenceFlow3"
				},
				"d81851e0-9d80-4c30-9f12-9728b7502302": {
					"name": "SequenceFlow7"
				},
				"0bf643c0-b61d-4e89-bc9e-f83c98485969": {
					"name": "SequenceFlow8"
				},
				"d8411f71-e426-4e3a-903e-633a75ad2ac9": {
					"name": "SequenceFlow12"
				},
				"94e9d072-db16-48e7-b5aa-3d8e7277f36c": {
					"name": "SequenceFlow14"
				},
				"5fb93900-fdd7-4382-9dc9-b09bf36b4247": {
					"name": "SequenceFlow15"
				},
				"5f2c4a9d-f4dd-452e-b2c4-2487d5cdb2c0": {
					"name": "SequenceFlow16"
				},
				"89a2d682-bd7a-483d-8752-93fbe698399d": {
					"name": "SequenceFlow27"
				},
				"66203c72-31e8-4c21-a252-13630a6dfe94": {
					"name": "SequenceFlow29"
				},
				"8be781b2-ea26-4511-b38e-bc35395fa18c": {
					"name": "SequenceFlow30"
				},
				"930430a4-6fbb-451e-bb13-23e3216ea6b6": {
					"name": "SequenceFlow31"
				},
				"78c7eb7a-a9a5-406e-83f3-d4ecf2abeb23": {
					"name": "SequenceFlow32"
				},
				"e5f577f9-7154-4a42-8ebf-7cf075b9ba73": {
					"name": "SequenceFlow33"
				},
				"f1ca8b2c-0507-4eff-ba70-27119e62eeaf": {
					"name": "SequenceFlow34"
				},
				"29d9f538-ba9b-4932-a9bf-9b2fb2af791e": {
					"name": "SequenceFlow35"
				},
				"6e4d4415-158e-41d6-9b61-a19425c3f696": {
					"name": "SequenceFlow36"
				},
				"efcc4175-4f31-44cf-9c30-784899e93fe4": {
					"name": "SequenceFlow38"
				},
				"3fdbd074-da96-41b7-b315-d6b8c1c15020": {
					"name": "SequenceFlow39"
				},
				"da6f517e-71eb-4471-a041-457d5d2c00e3": {
					"name": "SequenceFlow40"
				}
			},
			"diagrams": {
				"bfcac966-1501-4dfc-ba2e-ba69ea205cc8": {}
			}
		},
		"dfd63014-2db5-4bbc-b8eb-87a9e8aed272": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"90ebb779-409b-4a5c-a824-3637d280ea9c": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"ba3ca032-ac9e-42ac-b717-c2da613dfba8": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Analyse Request",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://Maintenance_Request_APPROVER_ONEMaintenance_Request_APPROVER_ONE/Maintenance_Request_APPROVER_ONE.Maintenance_Request_APPROVER_ONE",
			"recipientUsers": "joseph.sasikanth.reddy.byreddy@sap.com,diana@banrural.com",
			"recipientGroups": "wfs",
			"id": "usertask1",
			"name": "Analyse Request",
			"documentation": "Analyse Request"
		},
		"42c546a1-68e9-45cd-9ea8-833dd0a5a253": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Identify Supplier",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://Maintenance_Request_APPROVER_TWOMaintenance_Request_APPROVER_TWO/Maintenance_Request_APPROVER_TWO.Maintenance_Request_APPROVER_TWO",
			"recipientUsers": "joseph.sasikanth.reddy.byreddy@sap.com,pedro@banrural.com",
			"recipientGroups": "wfs",
			"id": "usertask2",
			"name": "Identify Supplier"
		},
		"89131e49-2e93-4885-b06c-66def7822bc3": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway3",
			"name": "ExclusiveGateway3",
			"default": "d8411f71-e426-4e3a-903e-633a75ad2ac9"
		},
		"e17767a3-78cf-4d63-887f-715f549901a1": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Execute Internal Maintenance",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://Maintenance_Request_APPROVER_THREEMaintenance_Request_APPROVER_THREE/Maintenance_Request_APPROVER_THREE.Maintenance_Request_APPROVER_THREE",
			"recipientUsers": "joseph.sasikanth.reddy.byreddy@sap.com,miguel@banrural.com",
			"recipientGroups": "wfs",
			"id": "usertask3",
			"name": "Execute Internal Maintenance"
		},
		"03798a8a-52bb-403a-8050-a3621e9303ca": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask1",
			"name": "Rejection Mail",
			"mailDefinitionRef": "9ca3de5c-b82e-45ce-b73c-cb9b9dacd2d1"
		},
		"7b0d75ac-2327-4cb2-97b1-caeaf99c93b1": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway4",
			"name": "ExclusiveGateway4",
			"default": "5f2c4a9d-f4dd-452e-b2c4-2487d5cdb2c0"
		},
		"b317bac1-be01-4548-8a82-b07d087a5697": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Request Quote",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://Maintenance_Request_APPROVER_FOURMaintenance_Request_APPROVER_FOUR/Maintenance_Request_APPROVER_FOUR.Maintenance_Request_APPROVER_FOUR",
			"recipientUsers": "joseph.sasikanth.reddy.byreddy@sap.com,jose@banrural.com",
			"recipientGroups": "wfs",
			"id": "usertask4",
			"name": "Request Quote"
		},
		"31cb79d2-14c6-4e5c-aba1-297d233807bb": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Schedule External Maintenance",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://Maintenance_Request_APPROVER_SIXMaintenance_Request_APPROVER_SIX/Maintenance_Request_APPROVER_SIX.Maintenance_Request_APPROVER_SIX",
			"recipientUsers": "joseph.sasikanth.reddy.byreddy@sap.com,pedro@banrural.com",
			"recipientGroups": "wfs",
			"id": "usertask5",
			"name": "Schedule External Maintenance",
			"documentation": "Schedule External Maintenance"
		},
		"825a60e9-67b0-4946-a505-e93fee590307": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Verify Maintenance",
			"description": "Verify Maintenance",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://Maintenance_Request_APPROVER_FIVEMaintenance_Request_APPROVER_FIVE/Maintenance_Request_APPROVER_FIVE.Maintenance_Request_APPROVER_FIVE",
			"recipientUsers": "joseph.sasikanth.reddy.byreddy@sap.com,pedro@banrural.com",
			"recipientGroups": "wfs",
			"id": "usertask6",
			"name": "Verify Maintenance",
			"documentation": "Verify Maintenance"
		},
		"5f4b56d3-651b-48c7-8139-7f8742555fc1": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway7",
			"name": "ExclusiveGateway7",
			"default": "930430a4-6fbb-451e-bb13-23e3216ea6b6"
		},
		"c4844d4a-ebfa-4ee4-ba8d-1d4c326d8b3c": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway8",
			"name": "ExclusiveGateway8",
			"default": "f1ca8b2c-0507-4eff-ba70-27119e62eeaf"
		},
		"dc48cb32-f4bb-43a5-bb3c-974d50bafe47": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Execute External Maintenance",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://Maintenance_Request_APPROVER_SEVENMaintenance_Request_APPROVER_SEVEN/Maintenance_Request_APPROVER_SEVEN.Maintenance_Request_APPROVER_SEVEN",
			"recipientUsers": "joseph.sasikanth.reddy.byreddy@sap.com,jose@banrural.com",
			"recipientGroups": "wfs",
			"id": "usertask7",
			"name": "Execute External Maintenance",
			"documentation": "Execute External Maintenance"
		},
		"9506647e-0b09-47a5-939c-3b953d44a1ea": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Verify Maintenance",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://Maintenance_Request_APPROVER_EIGHTMaintenance_Request_APPROVER_EIGHT/Maintenance_Request_APPROVER_EIGHT.Maintenance_Request_APPROVER_EIGHT",
			"recipientUsers": "joseph.sasikanth.reddy.byreddy@sap.com,pedro@banrural.com",
			"recipientGroups": "wfs",
			"id": "usertask8",
			"name": "Verify Maintenance",
			"documentation": "Verify Maintenance"
		},
		"3ed61a3c-df80-4965-96a6-7a7404720221": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway9",
			"name": "ExclusiveGateway9",
			"default": "3fdbd074-da96-41b7-b315-d6b8c1c15020"
		},
		"0c97b345-5d0a-4272-a95f-ef0855438c31": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "dfd63014-2db5-4bbc-b8eb-87a9e8aed272",
			"targetRef": "ba3ca032-ac9e-42ac-b717-c2da613dfba8"
		},
		"ba43221d-35ba-4929-92fd-bc93df05aa0a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "42c546a1-68e9-45cd-9ea8-833dd0a5a253",
			"targetRef": "7b0d75ac-2327-4cb2-97b1-caeaf99c93b1"
		},
		"d81851e0-9d80-4c30-9f12-9728b7502302": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "ba3ca032-ac9e-42ac-b717-c2da613dfba8",
			"targetRef": "89131e49-2e93-4885-b06c-66def7822bc3"
		},
		"0bf643c0-b61d-4e89-bc9e-f83c98485969": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.diana_approval_status==\"true\"}",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "89131e49-2e93-4885-b06c-66def7822bc3",
			"targetRef": "42c546a1-68e9-45cd-9ea8-833dd0a5a253"
		},
		"d8411f71-e426-4e3a-903e-633a75ad2ac9": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "SequenceFlow12",
			"sourceRef": "89131e49-2e93-4885-b06c-66def7822bc3",
			"targetRef": "03798a8a-52bb-403a-8050-a3621e9303ca"
		},
		"94e9d072-db16-48e7-b5aa-3d8e7277f36c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.pedro_initial_approval_status==\"true\"}",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "7b0d75ac-2327-4cb2-97b1-caeaf99c93b1",
			"targetRef": "e17767a3-78cf-4d63-887f-715f549901a1"
		},
		"5fb93900-fdd7-4382-9dc9-b09bf36b4247": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow15",
			"name": "SequenceFlow15",
			"sourceRef": "03798a8a-52bb-403a-8050-a3621e9303ca",
			"targetRef": "90ebb779-409b-4a5c-a824-3637d280ea9c"
		},
		"5f2c4a9d-f4dd-452e-b2c4-2487d5cdb2c0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "SequenceFlow16",
			"sourceRef": "7b0d75ac-2327-4cb2-97b1-caeaf99c93b1",
			"targetRef": "b317bac1-be01-4548-8a82-b07d087a5697"
		},
		"89a2d682-bd7a-483d-8752-93fbe698399d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow27",
			"name": "SequenceFlow27",
			"sourceRef": "b317bac1-be01-4548-8a82-b07d087a5697",
			"targetRef": "31cb79d2-14c6-4e5c-aba1-297d233807bb"
		},
		"66203c72-31e8-4c21-a252-13630a6dfe94": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow29",
			"name": "SequenceFlow29",
			"sourceRef": "31cb79d2-14c6-4e5c-aba1-297d233807bb",
			"targetRef": "5f4b56d3-651b-48c7-8139-7f8742555fc1"
		},
		"8be781b2-ea26-4511-b38e-bc35395fa18c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.pedro_jose_approval_status==\"true\"}",
			"id": "sequenceflow30",
			"name": "SequenceFlow30",
			"sourceRef": "5f4b56d3-651b-48c7-8139-7f8742555fc1",
			"targetRef": "dc48cb32-f4bb-43a5-bb3c-974d50bafe47"
		},
		"930430a4-6fbb-451e-bb13-23e3216ea6b6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow31",
			"name": "SequenceFlow31",
			"sourceRef": "5f4b56d3-651b-48c7-8139-7f8742555fc1",
			"targetRef": "b317bac1-be01-4548-8a82-b07d087a5697"
		},
		"78c7eb7a-a9a5-406e-83f3-d4ecf2abeb23": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow32",
			"name": "SequenceFlow32",
			"sourceRef": "e17767a3-78cf-4d63-887f-715f549901a1",
			"targetRef": "825a60e9-67b0-4946-a505-e93fee590307"
		},
		"e5f577f9-7154-4a42-8ebf-7cf075b9ba73": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.pedro_miguel_approval_status==\"true\"}",
			"id": "sequenceflow33",
			"name": "SequenceFlow33",
			"sourceRef": "c4844d4a-ebfa-4ee4-ba8d-1d4c326d8b3c",
			"targetRef": "90ebb779-409b-4a5c-a824-3637d280ea9c"
		},
		"f1ca8b2c-0507-4eff-ba70-27119e62eeaf": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow34",
			"name": "SequenceFlow34",
			"sourceRef": "c4844d4a-ebfa-4ee4-ba8d-1d4c326d8b3c",
			"targetRef": "e17767a3-78cf-4d63-887f-715f549901a1"
		},
		"29d9f538-ba9b-4932-a9bf-9b2fb2af791e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow35",
			"name": "SequenceFlow35",
			"sourceRef": "825a60e9-67b0-4946-a505-e93fee590307",
			"targetRef": "c4844d4a-ebfa-4ee4-ba8d-1d4c326d8b3c"
		},
		"6e4d4415-158e-41d6-9b61-a19425c3f696": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow36",
			"name": "SequenceFlow36",
			"sourceRef": "dc48cb32-f4bb-43a5-bb3c-974d50bafe47",
			"targetRef": "9506647e-0b09-47a5-939c-3b953d44a1ea"
		},
		"efcc4175-4f31-44cf-9c30-784899e93fe4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow38",
			"name": "SequenceFlow38",
			"sourceRef": "9506647e-0b09-47a5-939c-3b953d44a1ea",
			"targetRef": "3ed61a3c-df80-4965-96a6-7a7404720221"
		},
		"3fdbd074-da96-41b7-b315-d6b8c1c15020": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow39",
			"name": "SequenceFlow39",
			"sourceRef": "3ed61a3c-df80-4965-96a6-7a7404720221",
			"targetRef": "dc48cb32-f4bb-43a5-bb3c-974d50bafe47"
		},
		"da6f517e-71eb-4471-a041-457d5d2c00e3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.pedro_final_approval_status==\"true\"}",
			"id": "sequenceflow40",
			"name": "SequenceFlow40",
			"sourceRef": "3ed61a3c-df80-4965-96a6-7a7404720221",
			"targetRef": "90ebb779-409b-4a5c-a824-3637d280ea9c"
		},
		"bfcac966-1501-4dfc-ba2e-ba69ea205cc8": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"abafada7-bfeb-4a8f-a108-e929eb3b0471": {},
				"9ca27f47-83c2-4d4d-ada4-46ffbc1f6cdd": {},
				"525d0c9c-a3b3-4a36-b621-358cb7d91f91": {},
				"bb9e9fef-6116-45a0-8033-fe7dc1aed79a": {},
				"a48fed4f-91f2-4ade-a068-a328a9dbfca4": {},
				"0187c2aa-8800-42b7-b84e-33e4c3e4bdaa": {},
				"fe90e451-ac85-4c8b-bf49-fb3ed0bcb39f": {},
				"2b2af52b-46c8-4b55-b9d6-f223a1ef7468": {},
				"61f40b71-11ae-48a6-82a0-78190717b4d0": {},
				"dc76ab4f-82bd-4a8b-862c-1e9464a704d4": {},
				"e1de8d0a-d391-4dfa-808f-09a1472584a7": {},
				"0d8e62ca-518f-495a-9eeb-4d937082dc85": {},
				"742207e0-01de-495c-b739-2cdc5f4c1378": {},
				"e3d5f0b1-5428-4e66-b9dc-5a1f32a20279": {},
				"789725b1-7427-4d9d-8b87-da487e700aa0": {},
				"4052b244-2d81-49a4-a456-6158d0d7e0f0": {},
				"66db1a86-cd59-480f-9e0e-41896f3537a6": {},
				"006f5b74-4983-4460-9618-f1915e4669eb": {},
				"5f38f8a4-acd8-408c-99da-4e42156e23fa": {},
				"36ae2ffd-7ab3-4a2a-b801-7513ce1f0526": {},
				"537c9b2d-fde3-456d-b850-b37e39faafd3": {},
				"01c50661-2c01-4ea2-a1ab-4cdc5ff280c8": {},
				"43afa4ea-2c78-495b-bb17-838d0182d471": {},
				"bd923d8b-8d94-4f71-8788-3788040fdde9": {},
				"65f2da8d-5478-498c-8459-68ed87de8203": {},
				"fed545af-5ee9-44bf-ab1f-d655037e028a": {},
				"19cfb809-b8f9-4db5-bad2-8ba68c6dc385": {},
				"d5f8de63-2714-4ce8-b987-1e47cad831c4": {},
				"6a816ad3-12af-4896-b5e3-6a993393c51b": {},
				"469b8d84-c32e-4af5-935c-d89d56fbd23a": {},
				"b05cc268-d8c2-4f69-956e-bf3ccb3690f1": {},
				"708e8001-fa86-4e21-8de0-e645c85095de": {},
				"601da6c0-c0a1-46ee-98b4-1d073892ff2f": {},
				"d3392cf8-a14f-485c-b931-e917fb8b7ba9": {},
				"fa2a570e-abce-4b76-b2d9-e651b9c647ab": {},
				"32d1585f-ae29-4751-ad95-44e61f5025fc": {}
			}
		},
		"abafada7-bfeb-4a8f-a108-e929eb3b0471": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "dfd63014-2db5-4bbc-b8eb-87a9e8aed272"
		},
		"9ca27f47-83c2-4d4d-ada4-46ffbc1f6cdd": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1167,
			"y": 86,
			"width": 35,
			"height": 35,
			"object": "90ebb779-409b-4a5c-a824-3637d280ea9c"
		},
		"525d0c9c-a3b3-4a36-b621-358cb7d91f91": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116 239,116",
			"sourceSymbol": "abafada7-bfeb-4a8f-a108-e929eb3b0471",
			"targetSymbol": "bb9e9fef-6116-45a0-8033-fe7dc1aed79a",
			"object": "0c97b345-5d0a-4272-a95f-ef0855438c31"
		},
		"bb9e9fef-6116-45a0-8033-fe7dc1aed79a": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 189,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "ba3ca032-ac9e-42ac-b717-c2da613dfba8"
		},
		"a48fed4f-91f2-4ade-a068-a328a9dbfca4": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 414,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "42c546a1-68e9-45cd-9ea8-833dd0a5a253"
		},
		"0187c2aa-8800-42b7-b84e-33e4c3e4bdaa": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "464,116 566,116",
			"sourceSymbol": "a48fed4f-91f2-4ade-a068-a328a9dbfca4",
			"targetSymbol": "742207e0-01de-495c-b739-2cdc5f4c1378",
			"object": "ba43221d-35ba-4929-92fd-bc93df05aa0a"
		},
		"fe90e451-ac85-4c8b-bf49-fb3ed0bcb39f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "239,116.5 339,116.5",
			"sourceSymbol": "bb9e9fef-6116-45a0-8033-fe7dc1aed79a",
			"targetSymbol": "2b2af52b-46c8-4b55-b9d6-f223a1ef7468",
			"object": "d81851e0-9d80-4c30-9f12-9728b7502302"
		},
		"2b2af52b-46c8-4b55-b9d6-f223a1ef7468": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 318,
			"y": 96,
			"object": "89131e49-2e93-4885-b06c-66def7822bc3"
		},
		"61f40b71-11ae-48a6-82a0-78190717b4d0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "339,116.5 464,116.5",
			"sourceSymbol": "2b2af52b-46c8-4b55-b9d6-f223a1ef7468",
			"targetSymbol": "a48fed4f-91f2-4ade-a068-a328a9dbfca4",
			"object": "0bf643c0-b61d-4e89-bc9e-f83c98485969"
		},
		"dc76ab4f-82bd-4a8b-862c-1e9464a704d4": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 514,
			"y": 235,
			"width": 100,
			"height": 60,
			"object": "e17767a3-78cf-4d63-887f-715f549901a1"
		},
		"e1de8d0a-d391-4dfa-808f-09a1472584a7": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 360,
			"y": -62,
			"width": 100,
			"height": 60,
			"object": "03798a8a-52bb-403a-8050-a3621e9303ca"
		},
		"0d8e62ca-518f-495a-9eeb-4d937082dc85": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "339,117 339,-32 360.5,-32",
			"sourceSymbol": "2b2af52b-46c8-4b55-b9d6-f223a1ef7468",
			"targetSymbol": "e1de8d0a-d391-4dfa-808f-09a1472584a7",
			"object": "d8411f71-e426-4e3a-903e-633a75ad2ac9"
		},
		"742207e0-01de-495c-b739-2cdc5f4c1378": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 545,
			"y": 95,
			"object": "7b0d75ac-2327-4cb2-97b1-caeaf99c93b1"
		},
		"e3d5f0b1-5428-4e66-b9dc-5a1f32a20279": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "565,116 565,235.5",
			"sourceSymbol": "742207e0-01de-495c-b739-2cdc5f4c1378",
			"targetSymbol": "dc76ab4f-82bd-4a8b-862c-1e9464a704d4",
			"object": "94e9d072-db16-48e7-b5aa-3d8e7277f36c"
		},
		"789725b1-7427-4d9d-8b87-da487e700aa0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "410,-32 1182,-32 1182,103.5",
			"sourceSymbol": "e1de8d0a-d391-4dfa-808f-09a1472584a7",
			"targetSymbol": "9ca27f47-83c2-4d4d-ada4-46ffbc1f6cdd",
			"object": "5fb93900-fdd7-4382-9dc9-b09bf36b4247"
		},
		"4052b244-2d81-49a4-a456-6158d0d7e0f0": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 605,
			"y": -2,
			"width": 100,
			"height": 60,
			"object": "b317bac1-be01-4548-8a82-b07d087a5697"
		},
		"66db1a86-cd59-480f-9e0e-41896f3537a6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "566,116 650,116 650,28",
			"sourceSymbol": "742207e0-01de-495c-b739-2cdc5f4c1378",
			"targetSymbol": "4052b244-2d81-49a4-a456-6158d0d7e0f0",
			"object": "5f2c4a9d-f4dd-452e-b2c4-2487d5cdb2c0"
		},
		"006f5b74-4983-4460-9618-f1915e4669eb": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 771,
			"y": 3,
			"width": 100,
			"height": 60,
			"object": "31cb79d2-14c6-4e5c-aba1-297d233807bb"
		},
		"5f38f8a4-acd8-408c-99da-4e42156e23fa": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 655,
			"y": 235,
			"width": 100,
			"height": 60,
			"object": "825a60e9-67b0-4946-a505-e93fee590307"
		},
		"36ae2ffd-7ab3-4a2a-b801-7513ce1f0526": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "655,30.5 821,30.5",
			"sourceSymbol": "4052b244-2d81-49a4-a456-6158d0d7e0f0",
			"targetSymbol": "006f5b74-4983-4460-9618-f1915e4669eb",
			"object": "89a2d682-bd7a-483d-8752-93fbe698399d"
		},
		"537c9b2d-fde3-456d-b850-b37e39faafd3": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 800,
			"y": 86,
			"object": "5f4b56d3-651b-48c7-8139-7f8742555fc1"
		},
		"01c50661-2c01-4ea2-a1ab-4cdc5ff280c8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "821,33 821,98",
			"sourceSymbol": "006f5b74-4983-4460-9618-f1915e4669eb",
			"targetSymbol": "537c9b2d-fde3-456d-b850-b37e39faafd3",
			"object": "66203c72-31e8-4c21-a252-13630a6dfe94"
		},
		"43afa4ea-2c78-495b-bb17-838d0182d471": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "821,107 951,107",
			"sourceSymbol": "537c9b2d-fde3-456d-b850-b37e39faafd3",
			"targetSymbol": "469b8d84-c32e-4af5-935c-d89d56fbd23a",
			"object": "8be781b2-ea26-4511-b38e-bc35395fa18c"
		},
		"bd923d8b-8d94-4f71-8788-3788040fdde9": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "821,107 698,107 698,56",
			"sourceSymbol": "537c9b2d-fde3-456d-b850-b37e39faafd3",
			"targetSymbol": "4052b244-2d81-49a4-a456-6158d0d7e0f0",
			"object": "930430a4-6fbb-451e-bb13-23e3216ea6b6"
		},
		"65f2da8d-5478-498c-8459-68ed87de8203": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "564,265 662,265",
			"sourceSymbol": "dc76ab4f-82bd-4a8b-862c-1e9464a704d4",
			"targetSymbol": "5f38f8a4-acd8-408c-99da-4e42156e23fa",
			"object": "78c7eb7a-a9a5-406e-83f3-d4ecf2abeb23"
		},
		"fed545af-5ee9-44bf-ab1f-d655037e028a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 842,
			"y": 244,
			"object": "c4844d4a-ebfa-4ee4-ba8d-1d4c326d8b3c"
		},
		"19cfb809-b8f9-4db5-bad2-8ba68c6dc385": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "863,265 1189,265 1189,103.5",
			"sourceSymbol": "fed545af-5ee9-44bf-ab1f-d655037e028a",
			"targetSymbol": "9ca27f47-83c2-4d4d-ada4-46ffbc1f6cdd",
			"object": "e5f577f9-7154-4a42-8ebf-7cf075b9ba73"
		},
		"d5f8de63-2714-4ce8-b987-1e47cad831c4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "863,265 863,345.5 564,345.5 564,294.5",
			"sourceSymbol": "fed545af-5ee9-44bf-ab1f-d655037e028a",
			"targetSymbol": "dc76ab4f-82bd-4a8b-862c-1e9464a704d4",
			"object": "f1ca8b2c-0507-4eff-ba70-27119e62eeaf"
		},
		"6a816ad3-12af-4896-b5e3-6a993393c51b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "705,265 842.5,265",
			"sourceSymbol": "5f38f8a4-acd8-408c-99da-4e42156e23fa",
			"targetSymbol": "fed545af-5ee9-44bf-ab1f-d655037e028a",
			"object": "29d9f538-ba9b-4932-a9bf-9b2fb2af791e"
		},
		"469b8d84-c32e-4af5-935c-d89d56fbd23a": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 901,
			"y": 77,
			"width": 100,
			"height": 60,
			"object": "dc48cb32-f4bb-43a5-bb3c-974d50bafe47"
		},
		"b05cc268-d8c2-4f69-956e-bf3ccb3690f1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "951,107 1064,107",
			"sourceSymbol": "469b8d84-c32e-4af5-935c-d89d56fbd23a",
			"targetSymbol": "708e8001-fa86-4e21-8de0-e645c85095de",
			"object": "6e4d4415-158e-41d6-9b61-a19425c3f696"
		},
		"708e8001-fa86-4e21-8de0-e645c85095de": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 1014,
			"y": 77,
			"width": 100,
			"height": 60,
			"object": "9506647e-0b09-47a5-939c-3b953d44a1ea"
		},
		"601da6c0-c0a1-46ee-98b4-1d073892ff2f": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1037,
			"y": 172,
			"object": "3ed61a3c-df80-4965-96a6-7a7404720221"
		},
		"d3392cf8-a14f-485c-b931-e917fb8b7ba9": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1061,107 1061,172.5",
			"sourceSymbol": "708e8001-fa86-4e21-8de0-e645c85095de",
			"targetSymbol": "601da6c0-c0a1-46ee-98b4-1d073892ff2f",
			"object": "efcc4175-4f31-44cf-9c30-784899e93fe4"
		},
		"fa2a570e-abce-4b76-b2d9-e651b9c647ab": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1058,193 953,193 953,128",
			"sourceSymbol": "601da6c0-c0a1-46ee-98b4-1d073892ff2f",
			"targetSymbol": "469b8d84-c32e-4af5-935c-d89d56fbd23a",
			"object": "3fdbd074-da96-41b7-b315-d6b8c1c15020"
		},
		"32d1585f-ae29-4751-ad95-44e61f5025fc": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1058,193 1123,193 1123,111 1176,111",
			"sourceSymbol": "601da6c0-c0a1-46ee-98b4-1d073892ff2f",
			"targetSymbol": "9ca27f47-83c2-4d4d-ada4-46ffbc1f6cdd",
			"object": "da6f517e-71eb-4471-a041-457d5d2c00e3"
		},
		"8fa8cf23-b68b-4ee1-a926-9f89525e5fe4": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"maildefinition": 1,
			"sequenceflow": 40,
			"startevent": 1,
			"endevent": 1,
			"usertask": 8,
			"mailtask": 1,
			"exclusivegateway": 9,
			"parallelgateway": 1
		},
		"9ca3de5c-b82e-45ce-b73c-cb9b9dacd2d1": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "cho@demo.cloud.sap",
			"subject": "Rejection on Maintenance Request",
			"reference": "/webcontent/Banrural_WF/mail.html",
			"ignoreInvalidRecipients": true,
			"id": "maildefinition1"
		}
	}
}