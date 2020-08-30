create TABLE laptop (
                            id bigint NOT NULL AUTO_INCREMENT,
                            date_time datetime(6) DEFAULT NULL,
                            memory int NOT NULL,
                            model varchar(255) DEFAULT NULL,
                            price double NOT NULL,
                            processor varchar(255) DEFAULT NULL,
                            producer varchar(255) NOT NULL,
                            type_frame varchar(255) DEFAULT NULL,
                            used bit(1) NOT NULL,
                            PRIMARY KEY (id)
);
insert  into  laptop values (1,'2020-12-03 01:00:00.000000',256,'envy-m6',700,'i7','HP','METAL',TRUE);
insert  into  laptop values (2,'2019-12-03 12:00:00.000000',256,'MacBook Pro 16',988.99,'i9','Apple','METAL',FALSE);
insert  into  laptop values (3,'2019-12-02 07:00:00.000000',16 ,'aspire 1',900,'i3','Acer','PLASTIC',TRUE);
insert  into  laptop values (4,'2020-07-04 06:00:00.000000',8,'aspire 2',700.90,'i3','HP','PLASTIC',FALSE);
insert  into  laptop values (5,'2018-05-09 01:00:00.000000',8,'MacBook Pro 17',1000,'i7','Apple','METAL',TRUE);
insert  into  laptop values (6,'2017-05-01 01:00:00.000000',128,'MacBook Pro 13',800,'i7','Apple','METAL',TRUE);
insert  into  laptop values (7,'2020-12-03 01:00:00.000000',1,'aspire 3',940,'i7','Acer','METAL',FALSE);
insert  into  laptop values (8,'2019-12-03 01:00:00.000000',2,'Nitro 5',520,'i9','Acer','METAL',TRUE);
insert  into  laptop values (9,'2019-12-03 01:00:00.000000',128,'Nitro 7',499,'i9','Acer','METAL',FALSE);
insert  into  laptop values (10,'2019-12-03 14:34:12.000000',256,'Spin 3',1000.10,'amd','Acer','PLASTIC',TRUE);
insert  into  laptop values (11,'2019-01-29 01:00:00.000000',256,'Spin 5',500,'amd','Acer','METAL',FALSE);
insert  into  laptop values (12,'2020-12-12 16:00:00.000000',256,'G3',500,'i7','Dell','METAL',TRUE);
insert  into  laptop values (13,'2019-12-15 01:00:00.000000',256,'G5',800,'i5','Dell','PLASTIC',TRUE);
insert  into  laptop values (14,'2018-06-03 12:00:00.000000',256,'G7',600.11,'i9','Dell','METAL',TRUE);
insert  into  laptop values (15,'2018-07-03 01:00:00.000000',256,'XPS',900.80,'i7','Dell','METAL',TRUE);
insert  into  laptop values (16,'2019-12-03 01:00:00.000000',32,'envy-15',860.79,'i7','HP','METAL',FALSE);
insert  into  laptop values (17,'2017-10-17 05:00:00.000000',64,'envy-13',1300,'i7','HP','PLASTIC',TRUE);
insert  into  laptop values (18,'2016-11-03 01:00:00.000000',64,'envy-17',1200,'i9','HP','METAL',TRUE);
insert  into  laptop values (19,'2015-12-16 02:00:00.000000',32,'pavilion 15',800,'i7','HP','METAL',TRUE);
insert  into  laptop values (20,'2019-12-03 01:00:00.000000',512,'spectre x360',900,'i7','HP','METAL',TRUE);
