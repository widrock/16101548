/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 10.4.14-MariaDB : Database - unpas
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`unpas` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `unpas`;

/*Table structure for table `mahasiswa` */

DROP TABLE IF EXISTS `mahasiswa`;

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `nim` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

/*Data for the table `mahasiswa` */

insert  into `mahasiswa`(`id`,`nama`,`nim`,`jurusan`,`email`,`gambar`) values 
(1,'I Wayan Widya Pratama','16101541','TI-MDaaa','pratamawayanwidyaaaaa@gmail.com','foto1.jpg'),
(2,'I Komang Yoga Ari','16101540','TI-KAB','yoga@gmail.com','foto2.jpg'),
(15,'I Wayan Karya','16010234','TI-DGM','karya@yahoo.com','5ff7b6087247ePas Foto2 - Copy.jpg.jpg'),
(16,'I Wayan Sukarena','151015341','TI-KAB','renaolala@gmail.com','5ff7b39b0a207Transkip Nilai.jpg.jpg');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`) values 
(1,'q','$2y$10$lbiPjtPJeSjcIOpo1GsH4./M2XbMDfMjDEuy0qhB.jHJh/NIyQuVC'),
(3,'a','$2y$10$.q5z1pzk4zH1sPhjlT5vsutO1baWNoFhZGJy6BP3q79RW7XkNGj/m'),
(4,'p','$2y$10$q7OkjIthgRrvIHaHjDJqS.H5VYqJMZP2hSkqjoDbdm/TXPtnMzMmG');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
