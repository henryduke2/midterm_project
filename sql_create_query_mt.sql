DROP database `midterm_dw`;
CREATE DATABASE `midterm_DW` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;

Drop table `movie_rental_process`;
USE midterm_DW;

CREATE TABLE `movie_rental_process` (
	`fact_rental_key` smallint unsigned NOT NULL AUTO_INCREMENT,
    `customer_key` int DEFAULT NULL,
    `inventory_key` int DEFAULT NULL,
    `film_key` smallint unsigned NOT NULL,
    `store_key` tinyint unsigned NOT NULL,
	`staff_key` tinyint unsigned NOT NULL,
    `customer_status` tinyint(1) NOT NULL DEFAULT '1',
    `first_name` varchar(45) NOT NULL,
    `last_name` varchar(45) NOT NULL,
    `rental_date` date NOT NULL,
    `return_date` date DEFAULT NULL,
    primary key (`fact_rental_key`),
    Key `customer_key` (`customer_key`),
    Key `inventory_key` (`inventory_key`),
    Key `film_key` (`film_key`),
    Key `store_key` (`store_key`),
    Key `staff_key` (`staff_key`)
    )ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb3;
    
    

Select * from midterm_dw.movie_rental_process;





