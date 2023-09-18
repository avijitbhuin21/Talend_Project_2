CREATE DATABASE  IF NOT EXISTS `srd16_target_trial` ;
USE `srd16_target_trial`;

-- Table structure for table `actual_amount_to_be_paid`

DROP TABLE IF EXISTS `actual_amount_to_be_paid`;
CREATE TABLE `actual_amount_to_be_paid` (
  `Patient_ID` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Actual_Amount_to_be_Paid` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Patient_ID`));

-- Dumping data for table `actual_amount_to_be_paid`

LOCK TABLES `actual_amount_to_be_paid` WRITE;
INSERT INTO `actual_amount_to_be_paid` VALUES (1001,'Johnny Doe','123 Main St','555-123-4567',0.00),(1002,'Alice Johnson','456 Oak Ave','444-987-6543',0.00),(1003,'Michael Williams','789 Maple Rd','333-456-7890',0.00),(1004,'Emily Brown','101 Elm St','666-789-4561',0.00),(1005,'Robert Miller','202 Cedar Ave','777-654-3219',5000.00),(1006,'Sophia Davis','303 Pine Rd','888-321-6540',0.00),(1007,'James Garcia','404 Birch St','999-987-1236',0.00),(1008,'Lily Martinez','505 Willow Ave','222-654-9873',0.00),(1009,'Daniel Brown','606 Spruce Rd','111-852-9637',70500.00),(1010,'Ava Lee','707 Chestnut St','999-741-8528',17500.00),(1011,'Matthew Wilson','808 Hickory Ave','888-369-8520',0.00),(1012,'Olivia Taylor','909 Sycamore Rd','777-147-2583',0.00),(1013,'William Jones','1010 Poplar St','666-258-3694',0.00),(1014,'Emma White','1111 Cypress Ave','555-963-1472',0.00),(1015,'Noah Rodriguez','1212 Juniper Rd','444-369-1475',0.00),(1016,'Isabella Thomas','1313 Mulberry St','333-741-2580',0.00),(1017,'James Scott','1414 Aspen Ave','222-852-9633',0.00),(1018,'Oliver Young','1515 Sycamore Rd','111-963-8522',19000.00),(1019,'Ella Hernandez','1616 Chestnut St','999-123-9873',0.00),(1020,'Alexander King','1717 Pine Rd','888-987-6544',0.00),(1021,'Charlotte Moore','1818 Cedar Ave','777-111-0000',0.00),(1022,'Henry Jackson','1919 Willow Ave','666-222-3333',0.00),(1023,'Ella Wilson','2020 Spruce Rd','555-444-5555',0.00),(1024,'William Lee','2121 Chestnut St','444-555-6666',0.00),(1025,'Scarlett Thomas','2222 Birch St','333-666-7777',0.00),(1026,'Henry Davis','2323 Elm St','222-777-8888',0.00),(1027,'Sophia Smith','2424 Maple Rd','111-888-9999',23500.00),(1028,'Michael Johnson','2525 Oak Ave','999-777-6666',0.00),(1029,'Ava Anderson','2626 Pine Rd','888-666-5555',0.00),(1030,'James Martinez','2727 Willow Ave','777-555-4444',0.00),(1031,'Emma Brown','2828 Spruce Rd','666-444-3333',0.00),(1032,'Noah Davis','2929 Cedar Ave','555-333-2222',0.00),(1033,'Olivia Johnson','3030 Elm St','444-222-1111',0.00),(1034,'William Wilson','3131 Birch St','333-111-0000',0.00),(1035,'Sophia Williams','3232 Maple Rd','222-000-9999',0.00),(1036,'Michael Anderson','3333 Oak Ave','111-999-8888',64500.00),(1037,'Ava Garcia','3434 Pine Rd','999-888-7777',3000.00),(1038,'James Thomas','3535 Willow Ave','888-777-6666',0.00),(1039,'Emma Smith','3636 Spruce Rd','777-666-5555',0.00),(1040,'Noah Johnson','3737 Cedar Ave','666-555-4444',0.00),(1071,'Sophia Johnson','6868 Maple Rd','333-333-2222',0.00),(1072,'Michael Smith','6969 Birch St','222-222-1111',0.00),(1073,'Ava Anderson','7070 Oak Ave','111-111-0000',0.00),(1074,'James Wilson','7171 Spruce Rd','999-999-9999',0.00),(1075,'Emma Brown','7272 Elm St','888-888-8888',0.00),(1076,'Noah Davis','7373 Cedar Ave','777-777-7777',0.00),(1077,'Olivia Williams','7474 Pine Rd','666-666-6666',0.00),(1078,'William Johnson','7575 Willow Ave','555-555-5555',23000.00),(1079,'Sophia Garcia','7676 Maple Rd','444-444-4444',0.00),(1080,'Michael Smith','7777 Birch St','333-333-3333',0.00);
UNLOCK TABLES;

-- Table structure for table `appointment_booked_in_future_and_covered_by_insurance`

DROP TABLE IF EXISTS `appointment_booked_in_future_and_covered_by_insurance`;
CREATE TABLE `appointment_booked_in_future_and_covered_by_insurance` (
  `Patient_ID` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Examination_Room` varchar(50) DEFAULT NULL,
  `Physician_ID` int NOT NULL,
  `Insurance_ID` varchar(20) DEFAULT NULL,
  `Appointment_Start_Date` date NOT NULL,
  `Appointment_Start_Time` time NOT NULL,
  PRIMARY KEY (`Patient_ID`));

-- Dumping data for table `appointment_booked_in_future_and_covered_by_insurance`

LOCK TABLES `appointment_booked_in_future_and_covered_by_insurance` WRITE;
INSERT INTO `appointment_booked_in_future_and_covered_by_insurance` VALUES (1007,'James Garcia','Male','999-987-1236','Room 207',2008,'1007','2023-09-03','17:00:00'),(1008,'Lily Martinez','Female','222-654-9873','Room 208',2009,'1008','2023-09-04','12:00:00'),(1032,'Noah Davis','Male','555-333-2222','Room 209',2009,'1002','2023-09-27','09:45:00'),(1033,'Olivia Johnson','Female','444-222-1111','Room 210',2010,'1003','2023-09-28','14:30:00'),(1034,'William Wilson','Male','333-111-0000','Room 201',2001,'1004','2023-09-29','10:15:00'),(1035,'Sophia Williams','Female','222-000-9999','Room 202',2002,'1005','2023-09-30','11:45:00'),(1036,'Michael Anderson','Male','111-999-8888','Room 203',2003,'1006','2023-10-01','16:00:00'),(1037,'Ava Garcia','Female','999-888-7777','Room 204',2004,'1007','2023-10-02','13:30:00'),(1038,'James Thomas','Male','888-777-6666','Room 205',2005,'1008','2023-10-03','17:15:00'),(1040,'Noah Johnson','Male','666-555-4444','Room 207',2007,'1004','2023-10-05','18:00:00'),(1071,'Sophia Johnson','Female','333-333-2222','Room 210',2010,'1006','2023-10-25','14:30:00'),(1072,'Michael Smith','Male','222-222-1111','Room 201',2001,'1005','2023-10-26','17:00:00'),(1074,'James Wilson','Male','999-999-9999','Room 203',2003,'1003','2023-10-28','09:45:00'),(1075,'Emma Brown','Female','888-888-8888','Room 204',2004,'1002','2023-10-29','15:30:00'),(1077,'Olivia Williams','Female','666-666-6666','Room 206',2006,'1008','2023-10-31','11:45:00'),(1078,'William Johnson','Male','555-555-5555','Room 207',2007,'1006','2023-11-01','16:00:00'),(1079,'Sophia Garcia','Female','444-444-4444','Room 208',2008,'1005','2023-11-02','13:30:00');
UNLOCK TABLES;

-- Table structure for table `name_exp_hodornot`

DROP TABLE IF EXISTS `name_exp_hodornot`;
CREATE TABLE `name_exp_hodornot` (
  `Physician_ID` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Date_of_Joining` date NOT NULL,
  `Specialty` varchar(50) DEFAULT NULL,
  `Designation` varchar(50) DEFAULT NULL,
  `Experience` int DEFAULT NULL,
  `Dept_Head` varchar(5) DEFAULT NULL,
  `S_key` int NOT NULL,
  `scd_start` datetime NOT NULL,
  `scd_end` datetime DEFAULT NULL,
  `scd_version` int NOT NULL,
  `scd_active` bit(2) NOT NULL,
  PRIMARY KEY (`S_key`));

-- Dumping data for table `name_exp_hodornot`

LOCK TABLES `name_exp_hodornot` WRITE;
INSERT INTO `name_exp_hodornot` VALUES (2001,'Dr. Johnny Smith','2010-05-15','Cardiology','Associate Professor',11,'No',1,'2023-09-02 18:44:14','2023-09-02 19:01:05',1,_binary '\0'),(2002,'Dr. Alice Johnson','2012-09-20','Pediatrics','Department Head',14,'Yes',2,'2023-09-02 18:44:14',NULL,1,_binary ''),(2003,'Dr. Michael Williams','2008-11-08','Orthopedics','Surgeon',13,'No',3,'2023-09-02 18:44:14',NULL,1,_binary ''),(2004,'Dr. Emily Brown','2015-06-30','Dermatology','Registrar',6,'No',4,'2023-09-02 18:44:14',NULL,1,_binary ''),(2005,'Dr. Robert Miller','2007-02-25','Oncology','Department Head',14,'Yes',5,'2023-09-02 18:44:14',NULL,1,_binary ''),(2006,'Dr. Sophia Davis','2011-09-18','Neurology','Surgeon',10,'No',6,'2023-09-02 18:44:14',NULL,1,_binary ''),(2007,'Dr. James Garcia','2014-12-05','Gastroenterology','Senior Medical Officer',7,'No',7,'2023-09-02 18:44:14',NULL,1,_binary ''),(2008,'Dr. Lily Martin','2009-07-08','Obstetrics and Gynecology','Surgeon',12,'No',8,'2023-09-02 18:44:14','2023-09-02 19:01:05',1,_binary '\0'),(2009,'Dr. Daniel Brown','2018-04-12','Surgery','Registrar',3,'No',9,'2023-09-02 18:44:14',NULL,1,_binary ''),(2010,'Dr. Ava Lee','2016-01-03','Ophthalmology','Senior Medical Officer',5,'No',10,'2023-09-02 18:44:14',NULL,1,_binary ''),(2011,'Dr. William Johnson','2013-08-22','Cardiology','Surgeon',8,'No',11,'2023-09-02 18:44:14',NULL,1,_binary ''),(2012,'Dr. Emma Davis','2017-12-10','Dermatology','Registrar',4,'No',12,'2023-09-02 18:44:14',NULL,1,_binary ''),(2013,'Dr. Noah Wilson','2019-05-14','Orthopedics','Registrar',2,'No',13,'2023-09-02 18:44:14',NULL,1,_binary ''),(2014,'Dr. Olivia Brown','2018-10-29','Neurology','Surgeon',3,'No',14,'2023-09-02 18:44:14',NULL,1,_binary ''),(2015,'Dr. James Miller','2016-02-09','Pediatrics','Senior Medical Officer',5,'No',15,'2023-09-02 18:44:14',NULL,1,_binary ''),(2016,'Dr. Sophia Martinez','2011-07-21','Gastroenterology','Surgeon',10,'No',16,'2023-09-02 18:44:14',NULL,1,_binary ''),(2017,'Dr. Michael Johnson','2020-03-05','Surgery','Medical Practitioner',1,'No',17,'2023-09-02 18:44:14',NULL,1,_binary ''),(2018,'Dr. Ava Williams','2014-09-18','Obstetrics and Gynecology','Department Head',14,'Yes',18,'2023-09-02 18:44:14',NULL,1,_binary ''),(2019,'Dr. William Garcia','2012-06-17','Oncology','Surgeon',9,'No',19,'2023-09-02 18:44:14',NULL,1,_binary ''),(2020,'Dr. Olivia Anderson','2015-11-03','Ophthalmology','Registrar',6,'No',20,'2023-09-02 18:44:14',NULL,1,_binary ''),(2001,'Dr. John Smith','2010-05-15','Cardiology','Associate Professor',11,'No',21,'2023-09-02 19:01:05',NULL,2,_binary ''),(2008,'Dr. Lily Martinez','2009-07-08','Obstetrics and Gynecology','Surgeon',12,'No',22,'2023-09-02 19:01:05',NULL,2,_binary '');
UNLOCK TABLES;

-- Table structure for table `patient_count_based_on_insurence`

DROP TABLE IF EXISTS `patient_count_based_on_insurence`;
CREATE TABLE `patient_count_based_on_insurence` (
  `Insurance_ID` varchar(20) NOT NULL,
  `Insurance_Name` varchar(100) NOT NULL,
  `Patient_Count` int DEFAULT NULL,
  `S_key` int NOT NULL,
  `scd_start` datetime NOT NULL,
  `scd_end` datetime DEFAULT NULL,
  `scd_version` int NOT NULL,
  `scd_active` bit(2) NOT NULL,
  PRIMARY KEY (`Insurance_ID`,`S_key`));

-- Dumping data for table `patient_count_based_on_insurence`

LOCK TABLES `patient_count_based_on_insurence` WRITE;
INSERT INTO `patient_count_based_on_insurence` VALUES ('1002','XYZ Insurance Group',12,2,'2023-09-02 18:44:14',NULL,1,_binary ''),('1003','Global Health Insurers',13,1,'2023-09-02 18:44:14',NULL,1,_binary ''),('1004','Secure Life Assurance',6,7,'2023-09-02 18:44:14',NULL,1,_binary ''),('1005','SafeGuard Insurance Ltd.',13,6,'2023-09-02 18:44:14',NULL,1,_binary ''),('1006','United Insurance Corporation',12,3,'2023-09-02 18:44:14',NULL,1,_binary ''),('1007','National Health Insurers',5,4,'2023-09-02 18:44:14',NULL,1,_binary ''),('1008','FirstClass Insurance Services',12,5,'2023-09-02 18:44:14',NULL,1,_binary '');
UNLOCK TABLES;

-- Table structure for table `patient_details_based_on_physician_and_examination_room`

DROP TABLE IF EXISTS `patient_details_based_on_physician_and_examination_room`;
CREATE TABLE `patient_details_based_on_physician_and_examination_room` (
  `Appointment_ID` int NOT NULL,
  `Patient_ID` int NOT NULL,
  `Physician_ID` int NOT NULL,
  `Examination_Room` varchar(50) DEFAULT NULL,
  `Name` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Insurance_ID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Appointment_ID`));

-- Dumping data for table `patient_details_based_on_physician_and_examination_room`

LOCK TABLES `patient_details_based_on_physician_and_examination_room` WRITE;
INSERT INTO `patient_details_based_on_physician_and_examination_room` VALUES (3001,1001,2001,'Room 101','Johnny Doe','Male','123 Main St','555-123-4567',NULL),(3002,1002,2002,'Room 102','Alice Johnson','Female','456 Oak Ave','444-987-6543','1002'),(3003,1003,2003,'Room 103','Michael Williams','Male','789 Maple Rd','333-456-7890','1003'),(3004,1004,2004,'Room 104','Emily Brown','Female','101 Elm St','666-789-4561','1004'),(3005,1005,2005,'Room 105','Robert Miller','Male','202 Cedar Ave','777-654-3219','1005'),(3006,1006,2006,'Room 106','Sophia Davis','Female','303 Pine Rd','888-321-6540','1006'),(3007,1007,2007,'Room 107','James Garcia','Male','404 Birch St','999-987-1236','1007'),(3008,1008,2008,'Room 108','Lily Martinez','Female','505 Willow Ave','222-654-9873','1008'),(3009,1009,2009,'Room 109','Daniel Brown','Male','606 Spruce Rd','111-852-9637',NULL),(3010,1010,2010,'Room 110','Ava Lee','Female','707 Chestnut St','999-741-8528',NULL),(3011,1011,2001,'Room 101','Matthew Wilson','Male','808 Hickory Ave','888-369-8520',NULL),(3012,1012,2002,'Room 102','Olivia Taylor','Female','909 Sycamore Rd','777-147-2583','1002'),(3013,1013,2003,'Room 103','William Jones','Male','1010 Poplar St','666-258-3694','1003'),(3014,1014,2004,'Room 104','Emma White','Female','1111 Cypress Ave','555-963-1472','1004'),(3015,1015,2005,'Room 105','Noah Rodriguez','Male','1212 Juniper Rd','444-369-1475','1005'),(3016,1016,2006,'Room 106','Isabella Thomas','Female','1313 Mulberry St','333-741-2580','1006'),(3017,1017,2007,'Room 107','James Scott','Male','1414 Aspen Ave','222-852-9633','1007'),(3018,1018,2008,'Room 108','Oliver Young','Male','1515 Sycamore Rd','111-963-8522','1008'),(3019,1019,2009,'Room 109','Ella Hernandez','Female','1616 Chestnut St','999-123-9873',NULL),(3020,1020,2010,'Room 110','Alexander King','Male','1717 Pine Rd','888-987-6544',NULL),(3021,1021,2001,'Room 101','Charlotte Moore','Female','1818 Cedar Ave','777-111-0000',NULL),(3022,1022,2002,'Room 102','Henry Jackson','Male','1919 Willow Ave','666-222-3333','1002'),(3023,1023,2003,'Room 103','Ella Wilson','Female','2020 Spruce Rd','555-444-5555','1003'),(3024,1024,2004,'Room 104','William Lee','Male','2121 Chestnut St','444-555-6666','1004'),(3025,1025,2005,'Room 105','Scarlett Thomas','Female','2222 Birch St','333-666-7777','1005'),(3026,1026,2006,'Room 106','Henry Davis','Male','2323 Elm St','222-777-8888','1006'),(3027,1027,2007,'Room 107','Sophia Smith','Female','2424 Maple Rd','111-888-9999','1007'),(3028,1028,2008,'Room 108','Michael Johnson','Male','2525 Oak Ave','999-777-6666','1008'),(3029,1029,2009,'Room 109','Ava Anderson','Female','2626 Pine Rd','888-666-5555',NULL),(3030,1030,2010,'Room 110','James Martinez','Male','2727 Willow Ave','777-555-4444','1003'),(3031,1031,2001,'Room 101','Emma Brown','Female','2828 Spruce Rd','666-444-3333',NULL),(3032,1032,2002,'Room 102','Noah Davis','Male','2929 Cedar Ave','555-333-2222','1002'),(3033,1033,2003,'Room 103','Olivia Johnson','Female','3030 Elm St','444-222-1111','1003'),(3034,1034,2004,'Room 104','William Wilson','Male','3131 Birch St','333-111-0000','1004'),(3035,1035,2005,'Room 105','Sophia Williams','Female','3232 Maple Rd','222-000-9999','1005'),(3036,1036,2006,'Room 106','Michael Anderson','Male','3333 Oak Ave','111-999-8888','1006'),(3037,1037,2007,'Room 107','Ava Garcia','Female','3434 Pine Rd','999-888-7777','1007'),(3038,1038,2008,'Room 108','James Thomas','Male','3535 Willow Ave','888-777-6666','1008'),(3039,1039,2009,'Room 109','Emma Smith','Female','3636 Spruce Rd','777-666-5555',NULL),(3040,1040,2010,'Room 110','Noah Johnson','Male','3737 Cedar Ave','666-555-4444','1004'),(3041,1001,2002,'Room 201','Johnny Doe','Male','123 Main St','555-123-4567',NULL),(3042,1002,2003,'Room 202','Alice Johnson','Female','456 Oak Ave','444-987-6543','1002'),(3043,1003,2004,'Room 203','Michael Williams','Male','789 Maple Rd','333-456-7890','1003'),(3044,1004,2005,'Room 204','Emily Brown','Female','101 Elm St','666-789-4561','1004'),(3045,1005,2006,'Room 205','Robert Miller','Male','202 Cedar Ave','777-654-3219','1005'),(3046,1006,2007,'Room 206','Sophia Davis','Female','303 Pine Rd','888-321-6540','1006'),(3047,1007,2008,'Room 207','James Garcia','Male','404 Birch St','999-987-1236','1007'),(3048,1008,2009,'Room 208','Lily Martinez','Female','505 Willow Ave','222-654-9873','1008'),(3049,1009,2010,'Room 209','Daniel Brown','Male','606 Spruce Rd','111-852-9637',NULL),(3050,1010,2001,'Room 210','Ava Lee','Female','707 Chestnut St','999-741-8528',NULL),(3101,1031,2008,'Room 208','Emma Brown','Female','2828 Spruce Rd','666-444-3333',NULL),(3102,1032,2009,'Room 209','Noah Davis','Male','2929 Cedar Ave','555-333-2222','1002'),(3103,1033,2010,'Room 210','Olivia Johnson','Female','3030 Elm St','444-222-1111','1003'),(3104,1034,2001,'Room 201','William Wilson','Male','3131 Birch St','333-111-0000','1004'),(3105,1035,2002,'Room 202','Sophia Williams','Female','3232 Maple Rd','222-000-9999','1005'),(3106,1036,2003,'Room 203','Michael Anderson','Male','3333 Oak Ave','111-999-8888','1006'),(3107,1037,2004,'Room 204','Ava Garcia','Female','3434 Pine Rd','999-888-7777','1007'),(3108,1038,2005,'Room 205','James Thomas','Male','3535 Willow Ave','888-777-6666','1008'),(3109,1039,2006,'Room 206','Emma Smith','Female','3636 Spruce Rd','777-666-5555',NULL),(3110,1040,2007,'Room 207','Noah Johnson','Male','3737 Cedar Ave','666-555-4444','1004'),(3151,1071,2010,'Room 210','Sophia Johnson','Female','6868 Maple Rd','333-333-2222','1006'),(3152,1072,2001,'Room 201','Michael Smith','Male','6969 Birch St','222-222-1111','1005'),(3153,1073,2002,'Room 202','Ava Anderson','Female','7070 Oak Ave','111-111-0000',NULL),(3154,1074,2003,'Room 203','James Wilson','Male','7171 Spruce Rd','999-999-9999','1003'),(3155,1075,2004,'Room 204','Emma Brown','Female','7272 Elm St','888-888-8888','1002'),(3156,1076,2005,'Room 205','Noah Davis','Male','7373 Cedar Ave','777-777-7777',NULL),(3157,1077,2006,'Room 206','Olivia Williams','Female','7474 Pine Rd','666-666-6666','1008'),(3158,1078,2007,'Room 207','William Johnson','Male','7575 Willow Ave','555-555-5555','1006'),(3159,1079,2008,'Room 208','Sophia Garcia','Female','7676 Maple Rd','444-444-4444','1005'),(3160,1080,2009,'Room 209','Michael Smith','Male','7777 Birch St','333-333-3333',NULL);
UNLOCK TABLES;

-- Table structure for table `patient_info_who_have_appointment_today`

DROP TABLE IF EXISTS `patient_info_who_have_appointment_today`;
CREATE TABLE `patient_info_who_have_appointment_today` (
  `Patient_ID` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Examination_Room` varchar(50) DEFAULT NULL,
  `Physician_ID` int NOT NULL,
  PRIMARY KEY (`Patient_ID`));

-- Dumping data for table `patient_info_who_have_appointment_today`

LOCK TABLES `patient_info_who_have_appointment_today` WRITE;
INSERT INTO `patient_info_who_have_appointment_today` VALUES (1006,'Sophia Davis','Female','888-321-6540','Room 206',2007);
UNLOCK TABLES;

-- Table structure for table `patients_above_age_50`

DROP TABLE IF EXISTS `patients_above_age_50`;
CREATE TABLE `patients_above_age_50` (
  `Patient_ID` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Insurance_ID` varchar(20) DEFAULT NULL,
  `Age` int NOT NULL,
  `S_key` int NOT NULL,
  `scd_start` datetime NOT NULL,
  `scd_end` datetime DEFAULT NULL,
  `scd_version` int NOT NULL,
  `scd_active` bit(2) NOT NULL,
  PRIMARY KEY (`Patient_ID`,`S_key`));

-- Dumping data for table `patients_above_age_50`

LOCK TABLES `patients_above_age_50` WRITE;
INSERT INTO `patients_above_age_50` VALUES (1001,'John Doe','1970-03-15','Male','123 Main St','New York','USA','555-123-4567',NULL,53,1,'2023-09-02 18:44:14','2023-09-02 19:02:15',1,_binary '\0'),(1001,'Johnny Doe','1970-03-15','Male','123 Main St','New York','USA','555-123-4567',NULL,53,6,'2023-09-02 19:02:15',NULL,2,_binary ''),(1008,'Lily Martinez','1966-07-08','Female','505 Willow Ave','San Diego','USA','222-654-9873','1008',57,2,'2023-09-02 18:44:14',NULL,1,_binary ''),(1020,'Alexander King','1950-03-08','Male','1717 Pine Rd','Seattle','INDIA','888-987-6544',NULL,73,3,'2023-09-02 18:44:14',NULL,1,_binary ''),(1045,'Ava Lee','1967-11-24','Female','4242 Pine Rd','Wichita','USA','111-000-9999','1005',56,4,'2023-09-02 18:44:14',NULL,1,_binary ''),(1060,'Noah Williams','1971-11-21','Male','5757 Cedar Ave','New Orleans','USA','555-444-3333','1003',52,5,'2023-09-02 18:44:14',NULL,1,_binary '');
UNLOCK TABLES;

-- Table structure for table `patients_not_from_india_and_not_covered_by_insurence`

DROP TABLE IF EXISTS `patients_not_from_india_and_not_covered_by_insurence`;
CREATE TABLE `patients_not_from_india_and_not_covered_by_insurence` (
  `Patient_ID` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `S_Key` int NOT NULL,
  `scd_start` datetime NOT NULL,
  `scd_end` datetime DEFAULT NULL,
  `scd_version` int NOT NULL,
  `scd_active` bit(2) NOT NULL,
  PRIMARY KEY (`S_Key`));

-- Dumping data for table `patients_not_from_india_and_not_covered_by_insurence`

LOCK TABLES `patients_not_from_india_and_not_covered_by_insurence` WRITE;
INSERT INTO `patients_not_from_india_and_not_covered_by_insurence` VALUES (1001,'John Doe','1970-03-15','Male','123 Main St','New York','USA','555-123-4567',1,'2023-09-02 18:44:14','2023-09-02 19:02:15',1,_binary '\0'),(1009,'Daniel Brown','1982-04-12','Male','606 Spruce Rd','Dallas','USA','111-852-9637',2,'2023-09-02 18:44:14',NULL,1,_binary ''),(1010,'Ava Lee','1987-01-03','Female','707 Chestnut St','San Jose','USA','999-741-8528',3,'2023-09-02 18:44:14',NULL,1,_binary ''),(1011,'Matthew Wilson','1998-10-27','Male','808 Hickory Ave','Austin','USA','888-369-8520',4,'2023-09-02 18:44:14',NULL,1,_binary ''),(1019,'Ella Hernandez','1997-12-18','Female','1616 Chestnut St','El Paso','USA','999-123-9873',5,'2023-09-02 18:44:14',NULL,1,_binary ''),(1021,'Charlotte Moore','1993-05-29','Female','1818 Cedar Ave','Denver','USA','777-111-0000',6,'2023-09-02 18:44:14',NULL,1,_binary ''),(1029,'Ava Anderson','1989-08-08','Female','2626 Pine Rd','Albuquerque','USA','888-666-5555',7,'2023-09-02 18:44:14',NULL,1,_binary ''),(1031,'Emma Brown','1996-07-12','Female','2828 Spruce Rd','Fresno','USA','666-444-3333',8,'2023-09-02 18:44:14',NULL,1,_binary ''),(1039,'Emma Smith','1978-06-06','Female','3636 Spruce Rd','Raleigh','USA','777-666-5555',9,'2023-09-02 18:44:14',NULL,1,_binary ''),(1041,'Olivia Davis','1982-08-31','Female','3838 Elm St','Oakland','USA','555-444-3333',10,'2023-09-02 18:44:14',NULL,1,_binary ''),(1049,'Olivia Anderson','1990-04-10','Female','4646 Elm St','Tampa','USA','666-666-5555',11,'2023-09-02 18:44:14',NULL,1,_binary ''),(1050,'William Garcia','1976-01-18','Male','4747 Birch St','Honolulu','USA','555-555-4444',12,'2023-09-02 18:44:14',NULL,1,_binary ''),(1052,'Noah Davis','1979-11-12','Male','4949 Cedar Ave','Raleigh','USA','444-555-6666',13,'2023-09-02 18:44:14',NULL,1,_binary ''),(1055,'Sophia Garcia','1992-08-27','Female','5252 Maple Rd','Cleveland','USA','111-222-3333',14,'2023-09-02 18:44:14',NULL,1,_binary ''),(1059,'Emma Johnson','1993-02-28','Female','5656 Elm St','Arlington','USA','666-555-4444',15,'2023-09-02 18:44:14',NULL,1,_binary ''),(1062,'William Davis','1998-10-22','Male','5959 Willow Ave','Tampa','USA','333-222-1111',16,'2023-09-02 18:44:14',NULL,1,_binary ''),(1066,'James Garcia','1999-06-10','Male','6363 Spruce Rd','Raleigh','USA','888-888-7777',17,'2023-09-02 18:44:14',NULL,1,_binary ''),(1073,'Ava Anderson','1987-11-19','Female','7070 Oak Ave','Wichita','USA','111-111-0000',18,'2023-09-02 18:44:14',NULL,1,_binary ''),(1076,'Noah Davis','1998-02-27','Male','7373 Cedar Ave','Bakersfield','USA','777-777-7777',19,'2023-09-02 18:44:14',NULL,1,_binary ''),(1080,'Michael Smith','1984-11-12','Male','7777 Birch St','Colorado Springs','USA','333-333-3333',20,'2023-09-02 18:44:14',NULL,1,_binary ''),(1083,'Emma Wilson','1999-04-09','Female','8080 Willow Ave','Cleveland','USA','999-999-9999',21,'2023-09-02 18:44:14',NULL,1,_binary ''),(1087,'Sophia Brown','1987-09-20','Female','8484 Oak Ave','Arlington','USA','555-555-5555',22,'2023-09-02 18:44:14',NULL,1,_binary ''),(1090,'James Johnson','1989-11-22','Male','8787 Pine Rd','Tampa','USA','222-222-2222',23,'2023-09-02 18:44:14',NULL,1,_binary ''),(1094,'William Brown','1977-07-12','Male','9191 Birch St','Omaha','USA','777-777-7777',24,'2023-09-02 18:44:14',NULL,1,_binary ''),(1097,'Ava Johnson','1991-02-19','Female','9494 Maple Rd','Minneapolis','USA','444-444-4444',25,'2023-09-02 18:44:14',NULL,1,_binary ''),(1001,'Johnny Doe','1970-03-15','Male','123 Main St','New York','USA','555-123-4567',26,'2023-09-02 19:02:15',NULL,2,_binary '');
UNLOCK TABLES;

-- Table structure for table `patients_paying_this_month`

DROP TABLE IF EXISTS `patients_paying_this_month`;
CREATE TABLE `patients_paying_this_month` (
  `Payment_ID` int NOT NULL,
  `Payment_Date` date DEFAULT NULL,
  `Patient_ID` int DEFAULT NULL,
  `Name` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Insurance_ID` varchar(20) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Payment_ID`));

-- Dumping data for table `patients_paying_this_month`

LOCK TABLES `patients_paying_this_month` WRITE;
INSERT INTO `patients_paying_this_month` VALUES (4045,'2023-09-01',1005,'Robert Miller','Male','202 Cedar Ave','USA','777-654-3219','1005',28000.00),(4046,'2023-09-02',1006,'Sophia Davis','Female','303 Pine Rd','USA','888-321-6540','1006',20000.00),(4047,'2023-09-03',1007,'James Garcia','Male','404 Birch St','USA','999-987-1236','1007',24500.00),(4048,'2023-09-04',1008,'Lily Martinez','Female','505 Willow Ave','USA','222-654-9873','1008',21000.00),(4049,'2023-09-05',1009,'Daniel Brown','Male','606 Spruce Rd','USA','111-852-9637',NULL,23500.00),(4050,'2023-09-06',1010,'Ava Lee','Female','707 Chestnut St','USA','999-741-8528',NULL,31000.00),(4101,'2023-09-26',1031,'Emma Brown','Female','2828 Spruce Rd','USA','666-444-3333',NULL,22500.00),(4102,'2023-09-27',1032,'Noah Davis','Male','2929 Cedar Ave','USA','555-333-2222','1002',19500.00),(4103,'2023-09-28',1033,'Olivia Johnson','Female','3030 Elm St','USA','444-222-1111','1003',36000.00),(4104,'2023-09-29',1034,'William Wilson','Male','3131 Birch St','USA','333-111-0000','1004',14000.00),(4105,'2023-09-30',1035,'Sophia Williams','Female','3232 Maple Rd','USA','222-000-9999','1005',30000.00);
UNLOCK TABLES;

-- Table structure for table `patients_who_don’t_have_insurance_coverage`

DROP TABLE IF EXISTS `patients_who_don’t_have_insurance_coverage`;
CREATE TABLE `patients_who_don’t_have_insurance_coverage` (
  `Payment_ID` varchar(250) NOT NULL,
  `Patient_ID` int DEFAULT NULL,
  `Name` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Payment_ID`));

-- Dumping data for table `patients_who_don’t_have_insurance_coverage`

LOCK TABLES `patients_who_don’t_have_insurance_coverage` WRITE;
INSERT INTO `patients_who_don’t_have_insurance_coverage` VALUES ('4009,4049,4209',1009,'Daniel Brown','Male','606 Spruce Rd','111-852-9637',70500.00),('4018',1018,'Oliver Young','Male','1515 Sycamore Rd','111-963-8522',19000.00),('4027',1027,'Sophia Smith','Female','2424 Maple Rd','111-888-9999',23500.00),('4036,4106,4256',1036,'Michael Anderson','Male','3333 Oak Ave','111-999-8888',64500.00),('4158',1078,'William Johnson','Male','7575 Willow Ave','555-555-5555',23000.00);
UNLOCK TABLES;

-- Table structure for table `patients_with_more_than_200000_insurence_amount`

DROP TABLE IF EXISTS `patients_with_more_than_200000_insurence_amount`;
CREATE TABLE `patients_with_more_than_200000_insurence_amount` (
  `Patient_ID` int NOT NULL,
  `Insurance_Name` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Maximum_Coverage_Amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Patient_ID`));

-- Dumping data for table `patients_with_more_than_200000_insurence_amount`

LOCK TABLES `patients_with_more_than_200000_insurence_amount` WRITE;
INSERT INTO `patients_with_more_than_200000_insurence_amount` VALUES (1004,'Secure Life Assurance','Emily Brown','1995-06-30','Female','101 Elm St','Houston','USA','666-789-4561',250000.00),(1014,'Secure Life Assurance','Emma White','1991-11-22','Female','1111 Cypress Ave','Indianapolis','USA','555-963-1472',250000.00),(1024,'Secure Life Assurance','William Lee','1979-01-22','Male','2121 Chestnut St','Nashville','USA','444-555-6666',250000.00),(1034,'Secure Life Assurance','William Wilson','1987-05-01','Male','3131 Birch St','Kansas City','USA','333-111-0000',250000.00),(1040,'Secure Life Assurance','Noah Johnson','1999-03-15','Male','3737 Cedar Ave','Miami','USA','666-555-4444',250000.00),(1044,'Secure Life Assurance','Michael Wilson','1997-04-11','Male','4141 Oak Ave','Minneapolis','USA','222-111-0000',250000.00);
UNLOCK TABLES;

-- Table structure for table `physician_with_maximum_amount_to_be_paid`

DROP TABLE IF EXISTS `physician_with_maximum_amount_to_be_paid`;
CREATE TABLE `physician_with_maximum_amount_to_be_paid` (
  `Physician_ID` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Specialty` varchar(50) DEFAULT NULL,
  `Designation` varchar(50) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Physician_ID`));

-- Dumping data for table `physician_with_maximum_amount_to_be_paid`

LOCK TABLES `physician_with_maximum_amount_to_be_paid` WRITE;
INSERT INTO `physician_with_maximum_amount_to_be_paid` VALUES (2009,'Dr. Daniel Brown','Surgery','Registrar',261000.00),(2010,'Dr. Ava Lee','Ophthalmology','Senior Medical Officer',261000.00);
UNLOCK TABLES;

-- Table structure for table `surgeon_and_joined_between_2000_and_2010`

DROP TABLE IF EXISTS `surgeon_and_joined_between_2000_and_2010`;
CREATE TABLE `surgeon_and_joined_between_2000_and_2010` (
  `Physician_ID` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Date_of_Joining` date NOT NULL,
  `Specialty` varchar(50) DEFAULT NULL,
  `Designation` varchar(50) DEFAULT NULL,
  `Experience` int DEFAULT NULL,
  `S_Key` int NOT NULL,
  `scd_start` datetime NOT NULL,
  `scd_end` datetime DEFAULT NULL,
  `scd_version` int NOT NULL,
  `scd_active` bit(2) NOT NULL,
  PRIMARY KEY (`S_Key`));

-- Dumping data for table `surgeon_and_joined_between_2000_and_2010`

LOCK TABLES `surgeon_and_joined_between_2000_and_2010` WRITE;
INSERT INTO `surgeon_and_joined_between_2000_and_2010` VALUES (2003,'Dr. Michael Williams','2008-11-08','Orthopedics','Surgeon',13,1,'2023-09-02 18:53:31',NULL,1,_binary ''),(2008,'Dr. Lily Martin','2009-07-08','Obstetrics and Gynecology','Surgeon',12,2,'2023-09-02 18:53:31','2023-09-02 19:01:05',1,_binary '\0'),(2008,'Dr. Lily Martinez','2009-07-08','Obstetrics and Gynecology','Surgeon',12,3,'2023-09-02 19:01:05',NULL,2,_binary '');
UNLOCK TABLES;

