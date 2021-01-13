BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Meals on Wheels','');
INSERT INTO "Account" VALUES(2,'Tulsa Dream Center','');
INSERT INTO "Account" VALUES(3,'Triumph Worship Center','');
CREATE TABLE "Delivery_Item__c" (
	id INTEGER NOT NULL, 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery_Item__c" VALUES(1,'2022-01-13','Frozen','Frozen Turkey','3');
INSERT INTO "Delivery_Item__c" VALUES(2,'2030-01-13','Non-refrigerated','Canned Goods','2');
INSERT INTO "Delivery_Item__c" VALUES(3,'2024-01-13','Frozen','Prepared Meals','1');
CREATE TABLE "Delivery__c" (
	id INTEGER NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES(1,'2021-11-25T20:00:00.000+0000','Scheduled','1');
INSERT INTO "Delivery__c" VALUES(2,'2021-02-14T20:00:00.000+0000','Scheduled','3');
INSERT INTO "Delivery__c" VALUES(3,'2021-01-12T20:00:00.000+0000','Completed','1');
INSERT INTO "Delivery__c" VALUES(4,'2021-01-24T20:00:00.000+0000','Scheduled','2');
INSERT INTO "Delivery__c" VALUES(5,'2021-03-24T19:00:00.000+0000','Requested','3');
COMMIT;
