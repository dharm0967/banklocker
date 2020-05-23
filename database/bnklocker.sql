/*
SQLyog Ultimate v8.82 
MySQL - 5.1.45-community : Database - banklocker
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`banklocker` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `banklocker`;

/*Table structure for table `allotlocker` */

DROP TABLE IF EXISTS `allotlocker`;

CREATE TABLE `allotlocker` (
  `account_no` int(5) DEFAULT NULL,
  `locker_id` int(5) NOT NULL,
  `locker_type` varchar(20) DEFAULT NULL,
  `locker_price` float DEFAULT NULL,
  `allot_date` date DEFAULT NULL,
  `reallot_date` date DEFAULT NULL,
  PRIMARY KEY (`locker_id`),
  KEY `account_no` (`account_no`),
  CONSTRAINT `allotlocker_ibfk_1` FOREIGN KEY (`account_no`) REFERENCES `create_account` (`account_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `allotlocker` */

insert  into `allotlocker`(`account_no`,`locker_id`,`locker_type`,`locker_price`,`allot_date`,`reallot_date`) values (60755,12345,'small',2000,'0000-00-01','0000-00-01'),(60755,17512,'small',2000,'0000-00-01','0000-00-02');

/*Table structure for table `create_account` */

DROP TABLE IF EXISTS `create_account`;

CREATE TABLE `create_account` (
  `account_no` int(5) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `father_name` varchar(30) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` decimal(10,0) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pan_no` varchar(12) DEFAULT NULL,
  `aadhar_no` int(12) DEFAULT NULL,
  `profile` varchar(100) DEFAULT NULL,
  `sign` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`account_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `create_account` */

insert  into `create_account`(`account_no`,`name`,`father_name`,`dob`,`phone`,`email`,`pan_no`,`aadhar_no`,`profile`,`sign`) values (19612,'yuttyut','utyut','0000-00-00','464564','gdfhdfffhd','t6tyyy',6575,'C:UsersAbhay VermaDocumentsphoto.jpg','C:UsersAbhay VermaDocumentssignature.jpg'),(39872,'qergqer','regerg','2000-12-12','252828','gthrtyy','rurth',853374,'C:UsersAbhay VermaDocumentsphoto.jpg','C:UsersAbhay VermaDocumentssignature.jpg'),(42047,'sdfdfg','ergdrg','0000-00-00','5665','65656','5656',6655,'C:UsersAbhay VermaDocumentssignature.jpg','C:UsersAbhay VermaDocumentssignature.jpg'),(60755,'Abha','ab','2000-12-01','7052103644','abc@gmail.com','12345ef',1234789545,'','');

/*Table structure for table `login_detail` */

DROP TABLE IF EXISTS `login_detail`;

CREATE TABLE `login_detail` (
  `Login_Id` varchar(30) NOT NULL,
  `Password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Login_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login_detail` */

insert  into `login_detail`(`Login_Id`,`Password`) values ('Abhay@1234','123456');

/*Table structure for table `my_profile` */

DROP TABLE IF EXISTS `my_profile`;

CREATE TABLE `my_profile` (
  `profile` blob,
  `name` varchar(30) DEFAULT NULL,
  `father_name` varchar(30) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` decimal(10,0) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pan_no` varchar(12) DEFAULT NULL,
  `aadhar_no` decimal(12,0) NOT NULL,
  PRIMARY KEY (`aadhar_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `my_profile` */

insert  into `my_profile`(`profile`,`name`,`father_name`,`dob`,`phone`,`email`,`pan_no`,`aadhar_no`) values ('','atul ','vcd','2000-12-12','7052103644','mno@gmail','12345abc','123456789');

/*Table structure for table `product_detail` */

DROP TABLE IF EXISTS `product_detail`;

CREATE TABLE `product_detail` (
  `locker_id` int(5) DEFAULT NULL,
  `product_name` varchar(20) DEFAULT NULL,
  `product_weight` varchar(20) DEFAULT NULL,
  `product_size` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  KEY `locker_id` (`locker_id`),
  CONSTRAINT `product_detail_ibfk_1` FOREIGN KEY (`locker_id`) REFERENCES `allotlocker` (`locker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `product_detail` */

insert  into `product_detail`(`locker_id`,`product_name`,`product_weight`,`product_size`,`date`) values (17512,'gold','250','12*12cm2','2000-12-12'),(17512,'silver','100g','12*12','0000-00-00'),(12345,'kii','lkm','lml','0000-12-14'),(12345,'bbob','51','66','0000-00-00'),(12345,'16','6161','6111','0000-11-25'),(12345,'565','151616','156161','0000-00-00'),(12345,'dsv','vsdv','ewfw','0000-00-00'),(12345,'sd','scs','csxw','0000-00-00'),(12345,'sdvdf','fvfdbd','dfbdf','0000-00-00'),(12345,'klnpjp','nojipj','lkjioj','0000-02-01');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
