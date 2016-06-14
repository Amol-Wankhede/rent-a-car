# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.5.42)
# Database: rentacar
# Generation Time: 2016-06-14 11:24:40 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table Car
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Car`;

CREATE TABLE `Car` (
  `regNo` varchar(16) NOT NULL,
  `carType` char(16) NOT NULL DEFAULT '',
  `carImage` varchar(256) DEFAULT NULL,
  `description` text,
  `rentalPrice` float(5,2) NOT NULL,
  `active` char(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`regNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Car` WRITE;
/*!40000 ALTER TABLE `Car` DISABLE KEYS */;

INSERT INTO `Car` (`regNo`, `carType`, `carImage`, `description`, `rentalPrice`, `active`)
VALUES
	('ACL-1769','Compact','images/cars/compact.jpg','imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna',321.54,'In-Active'),
	('ALY-3962','Compact','images/cars/compact.jpg','vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam',491.34,'Active'),
	('ATG-9474','Compact','images/cars/compact.jpg','leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae',91.85,'In-Active'),
	('ATY-7673','Compact','images/cars/compact.jpg','mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum',393.64,'In-Active'),
	('AVN-7924','Compact','images/cars/compact.jpg','risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi',326.09,'In-Active'),
	('BGU-7043','Luxary','images/cars/luxary.jpg','pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque',57.77,'In-Active'),
	('CDB-2356','Compact','images/cars/compact.jpg','nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet',297.19,'Active'),
	('CFK-7140','Compact','images/cars/compact.jpg','metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi',304.43,'In-Active'),
	('CGI-5315','Full Size','images/cars/full-size.jpg','duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet',81.63,'Active'),
	('CPT-5859','Compact','images/cars/compact.jpg','in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum',68.20,'Active'),
	('CSM-4298','Compact','images/cars/compact.jpg','metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed',349.15,'Active'),
	('CYJ-6942','Compact','images/cars/compact.jpg','quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat',277.88,'Active'),
	('CZW-0212','Compact','images/cars/compact.jpg','donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla',312.27,'Active'),
	('DFO-9638','Premium','images/cars/premium.jpg','ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim',388.89,'Active'),
	('DMW-4895','Compact','images/cars/compact.jpg','eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros',362.43,'Active'),
	('DOA-0513','Premium','images/cars/premium.jpg','enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam',420.83,'Active'),
	('DQA-9670','Compact','images/cars/compact.jpg','rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et',142.38,'In-Active'),
	('DZI-4141','Full Size','images/cars/full-size.jpg','rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus',327.67,'Active'),
	('EPS-1890','Intermediate','images/cars/intermediate.jpg','ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing',319.75,'Active'),
	('ETY-4326','Intermediate','images/cars/intermediate.jpg','faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel',265.28,'Active'),
	('EWI-2053','Full Size','images/cars/full-size.jpg','faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet',51.34,'Active'),
	('FBL-6414','Compact','images/cars/compact.jpg','mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede',234.94,'Active'),
	('FGO-2705','Premium','images/cars/premium.jpg','massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam',222.96,'In-Active'),
	('FIX-5269','Full Size','images/cars/full-size.jpg','lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum',411.08,'Active'),
	('GFZ-4661','Compact','images/cars/compact.jpg','congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi',444.27,'Active'),
	('GRQ-1939','Compact','images/cars/compact.jpg','id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget',129.01,'Active'),
	('HGF-3740','Compact','images/cars/compact.jpg','in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris',121.99,'In-Active'),
	('HKW-8603','Compact','images/cars/compact.jpg','sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis',499.62,'Active'),
	('HQT-1478','Compact','images/cars/compact.jpg','lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam',403.82,'In-Active'),
	('HRC-2922','Compact','images/cars/compact.jpg','consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit',413.56,'Active'),
	('HSU-6669','Luxary','images/cars/luxary.jpg','eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia',350.88,'Active'),
	('HXQ-8074','Compact','images/cars/compact.jpg','varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in',254.67,'In-Active'),
	('ION-6087','Premium','images/cars/premium.jpg','magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus',115.00,'In-Active'),
	('IYM-2520','Full Size','images/cars/full-size.jpg','dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere',177.84,'Active'),
	('JEY-6703','Intermediate','images/cars/intermediate.jpg','eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed',154.46,'In-Active'),
	('JFE-6550','Intermediate','images/cars/intermediate.jpg','ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus',350.70,'Active'),
	('JKT-5615','Compact','images/cars/compact.jpg','risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis',258.09,'Active'),
	('JRS-5695','Compact','images/cars/compact.jpg','ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut',329.26,'Active'),
	('KAI-1910','Full Size','images/cars/full-size.jpg','feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl',58.58,'Active'),
	('KVG-8049','Compact','images/cars/compact.jpg','at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum',205.44,'Active'),
	('KWZ-0692','Compact','images/cars/compact.jpg','dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper',179.77,'Active'),
	('LAH-2364','Compact','images/cars/compact.jpg','nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum',244.03,'Active'),
	('LIO-8674','Premium','images/cars/premium.jpg','luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem',50.19,'In-Active'),
	('LNH-1362','Compact','images/cars/compact.jpg','luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae',305.84,'Active'),
	('LSX-3537','Compact','images/cars/compact.jpg','rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices',148.54,'In-Active'),
	('MNG-7658','Compact','images/cars/compact.jpg','proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede',421.13,'In-Active'),
	('MOX-0698','Premium','images/cars/premium.jpg','quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in',126.11,'Active'),
	('MQN-8046','Compact','images/cars/compact.jpg','erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum',179.60,'Active'),
	('MYG-3877','Compact','images/cars/compact.jpg','cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra',79.73,'In-Active'),
	('NAL-9512','Compact','images/cars/compact.jpg','mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet',357.37,'Active'),
	('NPS-0905','Compact','images/cars/compact.jpg','mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor',177.46,'Active'),
	('NZC-0815','Compact','images/cars/compact.jpg','sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis',498.10,'Active'),
	('OEG-2236','Premium','images/cars/premium.jpg','donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam',313.30,'Active'),
	('OIJ-3526','Premium','images/cars/premium.jpg','tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec',331.36,'Active'),
	('OYN-7043','Premium','images/cars/premium.jpg','parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi',138.79,'In-Active'),
	('PAE-3803','Intermediate','images/cars/intermediate.jpg','natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis',305.40,'Active'),
	('PCX-6208','Compact','images/cars/compact.jpg','suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium',465.93,'Active'),
	('PDB-1860','Compact','images/cars/compact.jpg','ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci',487.63,'Active'),
	('PFK-7719','Compact','images/cars/compact.jpg','parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa',178.87,'In-Active'),
	('PNB-4204','Compact','images/cars/compact.jpg','lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi',52.04,'Active'),
	('PTE-8906','Intermediate','images/cars/intermediate.jpg','euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis',468.53,'Active'),
	('PUG-2246','Luxary','images/cars/luxary.jpg','eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est',115.07,'Active'),
	('QKL-4714','Compact','images/cars/compact.jpg','varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet',136.11,'In-Active'),
	('QLT-9125','Compact','images/cars/compact.jpg','ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus',318.23,'Active'),
	('QTK-9770','Compact','images/cars/compact.jpg','in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at',51.11,'In-Active'),
	('RVD-1045','Compact','images/cars/compact.jpg','eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet',297.83,'Active'),
	('SBP-5200','Compact','images/cars/compact.jpg','luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse',408.78,'Active'),
	('SPY-2358','Compact','images/cars/compact.jpg','est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien',270.89,'Active'),
	('SRQ-0017','Compact','images/cars/compact.jpg','diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet',147.09,'In-Active'),
	('SYF-9143','Compact','images/cars/compact.jpg','nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam',436.11,'Active'),
	('TBX-8586','Compact','images/cars/compact.jpg','quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut',189.92,'Active'),
	('TEN-6610','Intermediate','images/cars/intermediate.jpg','maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque',319.08,'Active'),
	('THZ-0642','Compact','images/cars/compact.jpg','parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum',119.38,'Active'),
	('TMJ-7262','Compact','images/cars/compact.jpg','accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit',100.04,'In-Active'),
	('TOS-4927','Premium','images/cars/premium.jpg','diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat',365.93,'In-Active'),
	('UCV-1911','Luxary','images/cars/luxary.jpg','purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper',484.86,'Active'),
	('UEB-0224','Luxary','images/cars/luxary.jpg','ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam',496.29,'Active'),
	('UHV-1920','Luxary','images/cars/luxary.jpg','congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit',70.39,'Active'),
	('UJF-2388','Luxary','images/cars/luxary.jpg','justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend',403.74,'Active'),
	('UJP-1938','Luxary','images/cars/luxary.jpg','proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu',362.44,'Active'),
	('UMD-0160','Luxary','images/cars/luxary.jpg','viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed',314.37,'Active'),
	('UTO-0884','Luxary','images/cars/luxary.jpg','rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse',345.83,'Active'),
	('VCR-0273','Compact','images/cars/compact.jpg','dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus',331.90,'In-Active'),
	('VGO-4103','Premium','images/cars/premium.jpg','nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus',282.38,'Active'),
	('VHN-3092','Compact','images/cars/compact.jpg','nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi',389.81,'Active'),
	('VUL-3520','Luxary','images/cars/luxary.jpg','mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in',232.52,'Active'),
	('WGT-1904','Compact','images/cars/compact.jpg','turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla',450.29,'Active'),
	('WPE-3940','Intermediate','images/cars/intermediate.jpg','adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante',205.19,'Active'),
	('WTO-2812','Premium','images/cars/premium.jpg','mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis',157.68,'Active'),
	('XBU-7817','Luxary','images/cars/luxary.jpg','luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer',367.20,'In-Active'),
	('XIE-6526','Full Size','images/cars/full-size.jpg','erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue',189.77,'Active'),
	('XIY-2712','Full Size','images/cars/full-size.jpg','eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis',453.86,'In-Active'),
	('XNJ-2531','Compact','images/cars/compact.jpg','sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce',251.99,'Active'),
	('XRZ-7678','Compact','images/cars/compact.jpg','leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan',84.98,'In-Active'),
	('XYK-3726','Compact','images/cars/compact.jpg','turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas',367.03,'In-Active'),
	('YVS-2304','Compact','images/cars/compact.jpg','congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa',171.73,'Active'),
	('YXU-6331','Luxary','images/cars/luxary.jpg','non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus',244.06,'Active'),
	('YZE-6585','Intermediate','images/cars/intermediate.jpg','cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum',468.19,'Active'),
	('ZDG-4955','Compact','images/cars/compact.jpg','iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget',157.58,'Active'),
	('ZXL-8877','Compact','images/cars/compact.jpg','morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper',370.44,'In-Active');

/*!40000 ALTER TABLE `Car` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Customer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Customer`;

CREATE TABLE `Customer` (
  `cid` int(8) NOT NULL AUTO_INCREMENT,
  `userId` int(8) NOT NULL,
  `totalAmount` float(10,2) NOT NULL,
  `payDate` date DEFAULT NULL,
  PRIMARY KEY (`cid`,`userId`),
  KEY `R_15` (`userId`),
  CONSTRAINT `R_15` FOREIGN KEY (`userId`) REFERENCES `User` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table Enquiry
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Enquiry`;

CREATE TABLE `Enquiry` (
  `enquiryid` int(8) NOT NULL AUTO_INCREMENT,
  `userId` int(8) NOT NULL,
  `type` char(16) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `status` char(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`enquiryid`),
  KEY `R_4` (`userId`),
  CONSTRAINT `R_4` FOREIGN KEY (`userId`) REFERENCES `User` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Enquiry` WRITE;
/*!40000 ALTER TABLE `Enquiry` DISABLE KEYS */;

INSERT INTO `Enquiry` (`enquiryid`, `userId`, `type`, `message`, `status`)
VALUES
	(101,14,'Feedback','aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt','Pending'),
	(102,9,'Feedback','risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis','Replied'),
	(103,31,'Feedback','congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit','Pending'),
	(104,47,'Feedback','ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in','Pending'),
	(105,37,'Enquiry','lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque','Resolved'),
	(106,22,'Feedback','diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum','Replied'),
	(107,43,'Feedback','lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem','Resolved'),
	(108,1,'Enquiry','porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum','Replied'),
	(109,19,'Feedback','lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat','Replied'),
	(110,30,'Enquiry','ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer','Resolved'),
	(111,15,'Feedback','nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus','Replied'),
	(112,17,'Feedback','dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae','Pending'),
	(113,34,'Enquiry','pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce','Resolved'),
	(114,26,'Feedback','tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam','Replied'),
	(115,12,'Enquiry','luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non','Pending'),
	(116,15,'Enquiry','integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis','Resolved'),
	(117,14,'Feedback','nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna','Pending'),
	(118,10,'Enquiry','nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum','Replied'),
	(119,26,'Enquiry','ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam','Replied'),
	(120,33,'Feedback','cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem','Resolved'),
	(121,18,'Feedback','faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum','Replied'),
	(122,42,'Feedback','consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis','Resolved'),
	(123,21,'Feedback','donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien','Pending'),
	(124,40,'Enquiry','lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet','Resolved'),
	(125,13,'Feedback','lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl','Replied'),
	(126,13,'Enquiry','id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula','Resolved'),
	(127,42,'Feedback','ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla','Resolved'),
	(128,48,'Enquiry','aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque','Pending'),
	(129,30,'Enquiry','ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros','Resolved'),
	(130,49,'Enquiry','erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula','Resolved'),
	(131,11,'Enquiry','nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius','Resolved'),
	(132,40,'Enquiry','nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus','Resolved'),
	(133,31,'Enquiry','felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue','Pending'),
	(134,37,'Feedback','faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum','Pending'),
	(135,40,'Enquiry','fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue','Resolved'),
	(136,50,'Feedback','pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc','Resolved'),
	(137,15,'Enquiry','a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede','Replied'),
	(138,12,'Feedback','augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum','Replied'),
	(139,39,'Feedback','mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus','Replied'),
	(140,14,'Enquiry','feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie','Pending'),
	(141,48,'Enquiry','luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non','Resolved'),
	(142,5,'Feedback','volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea','Replied'),
	(143,2,'Feedback','luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere','Replied'),
	(144,45,'Feedback','odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla','Pending'),
	(145,19,'Enquiry','non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt','Replied'),
	(146,27,'Feedback','massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis','Resolved'),
	(147,8,'Feedback','lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien','Replied'),
	(148,34,'Enquiry','proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque','Pending'),
	(149,35,'Feedback','in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst','Replied'),
	(150,20,'Feedback','praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur','Pending'),
	(151,7,'Enquiry','justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est','Pending'),
	(152,50,'Feedback','duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse','Replied'),
	(153,1,'Enquiry','tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede','Replied'),
	(154,50,'Enquiry','in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem','Pending'),
	(155,33,'Enquiry','amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus','Resolved'),
	(156,19,'Enquiry','lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis','Resolved'),
	(157,14,'Feedback','dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna','Pending'),
	(158,3,'Feedback','vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut','Resolved'),
	(159,38,'Enquiry','eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis','Replied'),
	(160,40,'Enquiry','varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue','Pending'),
	(161,7,'Enquiry','quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet','Resolved'),
	(162,29,'Enquiry','auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit','Resolved'),
	(163,1,'Feedback','consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit','Pending'),
	(164,50,'Feedback','nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus','Resolved'),
	(165,10,'Enquiry','porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse','Replied'),
	(166,7,'Enquiry','habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea','Replied'),
	(167,29,'Enquiry','consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi','Resolved'),
	(168,24,'Enquiry','duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum','Resolved'),
	(169,39,'Enquiry','curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer','Resolved'),
	(170,47,'Enquiry','massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem','Resolved'),
	(171,24,'Enquiry','lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed','Resolved'),
	(172,37,'Feedback','velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat','Pending'),
	(173,28,'Feedback','nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi','Replied'),
	(174,42,'Feedback','sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis','Replied'),
	(175,46,'Feedback','massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum','Resolved'),
	(176,27,'Feedback','in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id','Replied'),
	(177,23,'Enquiry','rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet','Pending'),
	(178,48,'Enquiry','metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed','Resolved'),
	(179,38,'Feedback','nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus','Resolved'),
	(180,21,'Enquiry','erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit','Replied'),
	(181,50,'Feedback','parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit','Replied'),
	(182,45,'Enquiry','posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam','Pending'),
	(183,36,'Enquiry','quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus','Pending'),
	(184,33,'Enquiry','sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan','Replied'),
	(185,11,'Enquiry','nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus','Replied'),
	(186,28,'Enquiry','luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus','Resolved'),
	(187,9,'Enquiry','vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue','Resolved'),
	(188,1,'Feedback','proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus','Resolved'),
	(189,33,'Feedback','accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum','Pending'),
	(190,21,'Enquiry','quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit','Pending'),
	(191,27,'Enquiry','vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero','Replied'),
	(192,31,'Enquiry','nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio','Pending'),
	(193,17,'Enquiry','duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis','Pending'),
	(194,18,'Enquiry','nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse','Resolved'),
	(195,14,'Feedback','fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus','Replied'),
	(196,45,'Enquiry','tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta','Pending'),
	(197,50,'Enquiry','rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada','Pending'),
	(198,34,'Feedback','pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor','Resolved'),
	(199,49,'Feedback','id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed','Replied'),
	(200,35,'Enquiry','suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet','Pending');

/*!40000 ALTER TABLE `Enquiry` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table RentalRequest
# ------------------------------------------------------------

DROP TABLE IF EXISTS `RentalRequest`;

CREATE TABLE `RentalRequest` (
  `requestId` int(8) NOT NULL AUTO_INCREMENT,
  `userId` int(8) NOT NULL,
  `regNo` varchar(16) NOT NULL,
  `dateRequested` date NOT NULL,
  `dateFrom` date NOT NULL,
  `dateTo` date NOT NULL,
  `status` char(16) NOT NULL DEFAULT '',
  `message` text,
  PRIMARY KEY (`requestId`),
  KEY `R_5` (`userId`),
  KEY `R_13` (`regNo`),
  CONSTRAINT `R_13` FOREIGN KEY (`regNo`) REFERENCES `Car` (`regNo`),
  CONSTRAINT `R_5` FOREIGN KEY (`userId`) REFERENCES `User` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `RentalRequest` WRITE;
/*!40000 ALTER TABLE `RentalRequest` DISABLE KEYS */;

INSERT INTO `RentalRequest` (`requestId`, `userId`, `regNo`, `dateRequested`, `dateFrom`, `dateTo`, `status`, `message`)
VALUES
	(1,43,'TMJ-7262','2016-06-13','2016-06-13','2016-06-21','Accepted','nisi venenatis tristique fusce congue diam'),
	(2,92,'YXU-6331','2016-06-13','2016-06-16','2016-06-20','Accepted','lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi'),
	(3,48,'DOA-0513','2016-06-14','2016-06-18','2016-06-21','Pending','cursus id turpis integer aliquet massa id lobortis'),
	(4,22,'XIE-6526','2016-06-14','2016-06-18','2016-06-20','Declined','tincidunt ante vel ipsum praesent blandit lacinia'),
	(5,75,'MNG-7658','2016-06-13','2016-06-16','2016-06-20','Accepted','maecenas rhoncus aliquam lacus morbi quis'),
	(6,11,'AVN-7924','2016-06-14','2016-06-16','2016-06-21','Declined','ipsum integer a nibh in quis justo maecenas rhoncus'),
	(7,51,'DMW-4895','2016-06-13','2016-06-17','2016-06-20','Pending','nisi nam ultrices libero non'),
	(8,32,'XNJ-2531','2016-06-14','2016-06-18','2016-06-21','Accepted','semper rutrum nulla nunc purus phasellus in felis donec'),
	(9,66,'NPS-0905','2016-06-14','2016-06-18','2016-06-20','Accepted','in congue etiam justo etiam'),
	(10,38,'QTK-9770','2016-06-13','2016-06-17','2016-06-20','Declined','urna pretium nisl ut volutpat sapien'),
	(11,46,'UCV-1911','2016-06-14','2016-06-16','2016-06-21','Declined','massa tempor convallis nulla neque libero convallis eget eleifend luctus'),
	(12,57,'SRQ-0017','2016-06-14','2016-06-14','2016-06-21','Accepted','auctor sed tristique in tempus sit amet sem fusce consequat'),
	(13,57,'PDB-1860','2016-06-14','2016-06-18','2016-06-20','Declined','blandit mi in porttitor pede justo eu'),
	(14,49,'TBX-8586','2016-06-14','2016-06-17','2016-06-21','Declined','amet consectetuer adipiscing elit proin interdum mauris non ligula'),
	(15,76,'XIE-6526','2016-06-14','2016-06-17','2016-06-20','Accepted','vehicula consequat morbi a ipsum integer a nibh in quis'),
	(16,19,'HKW-8603','2016-06-13','2016-06-17','2016-06-20','Accepted','est lacinia nisi venenatis tristique fusce congue diam id'),
	(17,73,'HGF-3740','2016-06-13','2016-06-18','2016-06-21','Declined','est congue elementum in hac habitasse platea'),
	(18,18,'UJF-2388','2016-06-14','2016-06-17','2016-06-20','Declined','lacus morbi sem mauris laoreet ut'),
	(19,35,'THZ-0642','2016-06-13','2016-06-18','2016-06-20','Accepted','augue luctus tincidunt nulla mollis molestie lorem quisque'),
	(20,10,'QLT-9125','2016-06-14','2016-06-17','2016-06-21','Declined','at turpis a pede posuere'),
	(21,75,'WGT-1904','2016-06-13','2016-06-18','2016-06-20','Pending','ut erat curabitur gravida nisi'),
	(22,17,'ETY-4326','2016-06-14','2016-06-16','2016-06-20','Pending','odio elementum eu interdum eu tincidunt'),
	(23,39,'LAH-2364','2016-06-13','2016-06-16','2016-06-21','Accepted','ut nunc vestibulum ante ipsum primis in faucibus orci'),
	(24,64,'AVN-7924','2016-06-13','2016-06-17','2016-06-20','Declined','sit amet consectetuer adipiscing elit proin'),
	(25,60,'ETY-4326','2016-06-13','2016-06-18','2016-06-20','Pending','id massa id nisl venenatis lacinia aenean sit amet justo'),
	(26,94,'UHV-1920','2016-06-14','2016-06-18','2016-06-21','Declined','augue luctus tincidunt nulla mollis molestie lorem quisque'),
	(27,58,'DQA-9670','2016-06-13','2016-06-18','2016-06-21','Pending','nibh in lectus pellentesque at nulla suspendisse potenti cras'),
	(28,61,'WPE-3940','2016-06-14','2016-06-17','2016-06-21','Declined','blandit lacinia erat vestibulum sed'),
	(29,47,'ETY-4326','2016-06-13','2016-06-16','2016-06-21','Pending','et magnis dis parturient montes nascetur'),
	(30,88,'DFO-9638','2016-06-14','2016-06-17','2016-06-21','Declined','eu tincidunt in leo maecenas'),
	(31,27,'PTE-8906','2016-06-14','2016-06-17','2016-06-21','Accepted','ut rhoncus aliquet pulvinar sed nisl nunc rhoncus'),
	(32,54,'XRZ-7678','2016-06-14','2016-06-16','2016-06-21','Declined','eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan'),
	(33,38,'ALY-3962','2016-06-14','2016-06-18','2016-06-20','Declined','tortor id nulla ultrices aliquet maecenas leo odio'),
	(34,21,'YXU-6331','2016-06-13','2016-06-16','2016-06-21','Declined','metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean'),
	(35,25,'DMW-4895','2016-06-13','2016-06-18','2016-06-21','Pending','vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis'),
	(36,74,'KWZ-0692','2016-06-14','2016-06-17','2016-06-21','Pending','sollicitudin ut suscipit a feugiat et eros vestibulum ac est'),
	(37,50,'KAI-1910','2016-06-14','2016-06-16','2016-06-21','Pending','lobortis vel dapibus at diam nam'),
	(38,12,'THZ-0642','2016-06-14','2016-06-17','2016-06-21','Pending','consectetuer adipiscing elit proin risus praesent lectus vestibulum'),
	(39,32,'VGO-4103','2016-06-13','2016-06-17','2016-06-21','Declined','morbi vel lectus in quam'),
	(40,26,'HGF-3740','2016-06-13','2016-06-17','2016-06-21','Accepted','augue quam sollicitudin vitae consectetuer eget rutrum at'),
	(41,66,'CYJ-6942','2016-06-13','2016-06-16','2016-06-21','Pending','arcu libero rutrum ac lobortis vel dapibus at diam nam'),
	(42,42,'PCX-6208','2016-06-13','2016-06-18','2016-06-20','Pending','quisque arcu libero rutrum ac lobortis vel dapibus at'),
	(43,43,'CGI-5315','2016-06-13','2016-06-18','2016-06-20','Declined','fusce posuere felis sed lacus morbi sem mauris laoreet'),
	(44,84,'KWZ-0692','2016-06-13','2016-06-16','2016-06-21','Accepted','morbi vestibulum velit id pretium iaculis diam'),
	(45,59,'QKL-4714','2016-06-13','2016-06-17','2016-06-21','Pending','placerat praesent blandit nam nulla integer pede justo'),
	(46,83,'ATY-7673','2016-06-14','2016-06-17','2016-06-20','Accepted','semper porta volutpat quam pede'),
	(47,90,'FBL-6414','2016-06-13','2016-06-16','2016-06-20','Declined','dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien'),
	(48,93,'HXQ-8074','2016-06-13','2016-06-17','2016-06-20','Accepted','mauris non ligula pellentesque ultrices phasellus id'),
	(49,98,'VUL-3520','2016-06-14','2016-06-16','2016-06-20','Declined','condimentum neque sapien placerat ante nulla justo'),
	(50,16,'WGT-1904','2016-06-14','2016-06-16','2016-06-21','Declined','ac leo pellentesque ultrices mattis'),
	(51,93,'DOA-0513','2016-06-14','2016-06-18','2016-06-21','Pending','dictumst morbi vestibulum velit id pretium iaculis diam'),
	(52,94,'DFO-9638','2016-06-13','2016-06-17','2016-06-21','Declined','arcu libero rutrum ac lobortis vel dapibus'),
	(53,60,'YXU-6331','2016-06-13','2016-06-16','2016-06-20','Declined','fermentum justo nec condimentum neque sapien placerat'),
	(54,46,'HSU-6669','2016-06-13','2016-06-17','2016-06-20','Accepted','sed justo pellentesque viverra pede ac diam cras pellentesque'),
	(55,43,'JKT-5615','2016-06-14','2016-06-17','2016-06-20','Declined','dapibus dolor vel est donec odio justo sollicitudin ut suscipit'),
	(56,81,'FBL-6414','2016-06-13','2016-06-17','2016-06-20','Accepted','natoque penatibus et magnis dis parturient'),
	(57,83,'JEY-6703','2016-06-14','2016-06-16','2016-06-20','Accepted','erat nulla tempus vivamus in felis eu sapien cursus'),
	(58,30,'JKT-5615','2016-06-13','2016-06-17','2016-06-20','Pending','nulla ac enim in tempor turpis nec euismod scelerisque'),
	(59,16,'XRZ-7678','2016-06-13','2016-06-18','2016-06-21','Pending','justo in hac habitasse platea dictumst etiam faucibus cursus urna'),
	(60,75,'HXQ-8074','2016-06-13','2016-06-16','2016-06-21','Declined','in faucibus orci luctus et ultrices posuere cubilia curae duis'),
	(61,77,'WGT-1904','2016-06-13','2016-06-18','2016-06-20','Accepted','sollicitudin mi sit amet lobortis sapien sapien'),
	(62,40,'SRQ-0017','2016-06-14','2016-06-16','2016-06-20','Declined','proin eu mi nulla ac'),
	(63,72,'TEN-6610','2016-06-14','2016-06-16','2016-06-21','Accepted','interdum eu tincidunt in leo maecenas pulvinar lobortis'),
	(64,27,'QKL-4714','2016-06-14','2016-06-16','2016-06-20','Pending','semper porta volutpat quam pede lobortis ligula sit amet'),
	(65,16,'HRC-2922','2016-06-13','2016-06-17','2016-06-20','Declined','leo odio condimentum id luctus nec molestie sed'),
	(66,30,'PNB-4204','2016-06-14','2016-06-18','2016-06-21','Declined','integer ac leo pellentesque ultrices'),
	(67,66,'PNB-4204','2016-06-13','2016-06-18','2016-06-21','Declined','quis orci nullam molestie nibh in'),
	(68,32,'LIO-8674','2016-06-13','2016-06-18','2016-06-21','Pending','at turpis a pede posuere nonummy'),
	(69,80,'BGU-7043','2016-06-13','2016-06-17','2016-06-20','Accepted','volutpat erat quisque erat eros viverra eget'),
	(70,52,'XRZ-7678','2016-06-13','2016-06-18','2016-06-21','Declined','penatibus et magnis dis parturient montes nascetur ridiculus'),
	(71,77,'HGF-3740','2016-06-13','2016-06-16','2016-06-21','Declined','congue vivamus metus arcu adipiscing molestie hendrerit'),
	(72,86,'OEG-2236','2016-06-13','2016-06-17','2016-06-21','Declined','in magna bibendum imperdiet nullam orci pede venenatis non sodales'),
	(73,49,'DMW-4895','2016-06-13','2016-06-16','2016-06-20','Accepted','diam erat fermentum justo nec condimentum neque'),
	(74,35,'HSU-6669','2016-06-13','2016-06-16','2016-06-20','Pending','neque sapien placerat ante nulla justo aliquam quis'),
	(75,37,'SYF-9143','2016-06-14','2016-06-18','2016-06-21','Declined','ac est lacinia nisi venenatis tristique fusce congue diam'),
	(76,71,'SYF-9143','2016-06-14','2016-06-16','2016-06-20','Declined','volutpat quam pede lobortis ligula sit'),
	(77,86,'UHV-1920','2016-06-14','2016-06-17','2016-06-20','Accepted','turpis adipiscing lorem vitae mattis nibh ligula'),
	(78,93,'TOS-4927','2016-06-13','2016-06-17','2016-06-21','Declined','quisque ut erat curabitur gravida'),
	(79,27,'VCR-0273','2016-06-14','2016-06-17','2016-06-20','Accepted','quam pharetra magna ac consequat metus'),
	(80,28,'LAH-2364','2016-06-13','2016-06-17','2016-06-21','Pending','odio condimentum id luctus nec molestie sed justo'),
	(81,90,'JFE-6550','2016-06-14','2016-06-18','2016-06-20','Pending','ante vel ipsum praesent blandit lacinia'),
	(82,85,'XYK-3726','2016-06-13','2016-06-17','2016-06-21','Declined','nisi nam ultrices libero non'),
	(83,17,'CYJ-6942','2016-06-14','2016-06-16','2016-06-20','Pending','quis orci nullam molestie nibh'),
	(84,91,'PUG-2246','2016-06-14','2016-06-16','2016-06-21','Accepted','faucibus cursus urna ut tellus nulla ut'),
	(85,52,'VUL-3520','2016-06-14','2016-06-16','2016-06-20','Pending','urna ut tellus nulla ut erat'),
	(86,88,'SBP-5200','2016-06-13','2016-06-17','2016-06-20','Accepted','placerat ante nulla justo aliquam quis turpis eget elit sodales'),
	(87,73,'ZDG-4955','2016-06-14','2016-06-18','2016-06-21','Accepted','elit proin risus praesent lectus vestibulum quam'),
	(88,17,'TOS-4927','2016-06-14','2016-06-18','2016-06-21','Declined','velit id pretium iaculis diam erat'),
	(89,27,'JRS-5695','2016-06-13','2016-06-18','2016-06-20','Accepted','lobortis sapien sapien non mi integer'),
	(90,12,'HSU-6669','2016-06-13','2016-06-17','2016-06-20','Pending','at feugiat non pretium quis lectus'),
	(91,78,'BGU-7043','2016-06-14','2016-06-18','2016-06-20','Pending','fusce congue diam id ornare imperdiet sapien'),
	(92,94,'EWI-2053','2016-06-14','2016-06-18','2016-06-20','Accepted','ultrices vel augue vestibulum ante ipsum primis in'),
	(93,89,'JFE-6550','2016-06-13','2016-06-16','2016-06-20','Declined','erat curabitur gravida nisi at nibh in hac'),
	(94,62,'HXQ-8074','2016-06-14','2016-06-17','2016-06-21','Pending','primis in faucibus orci luctus et'),
	(95,47,'PTE-8906','2016-06-13','2016-06-18','2016-06-20','Pending','neque aenean auctor gravida sem praesent id'),
	(96,40,'DOA-0513','2016-06-13','2016-06-18','2016-06-20','Pending','ac nulla sed vel enim'),
	(97,68,'HGF-3740','2016-06-13','2016-06-18','2016-06-20','Declined','eleifend pede libero quis orci nullam'),
	(98,17,'SRQ-0017','2016-06-13','2016-06-18','2016-06-21','Accepted','luctus tincidunt nulla mollis molestie lorem quisque'),
	(99,81,'PDB-1860','2016-06-14','2016-06-18','2016-06-21','Accepted','massa id lobortis convallis tortor risus dapibus augue vel'),
	(100,51,'VCR-0273','2016-06-14','2016-06-17','2016-06-20','Declined','dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at');

/*!40000 ALTER TABLE `RentalRequest` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Staff
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Staff`;

CREATE TABLE `Staff` (
  `staffId` int(8) NOT NULL AUTO_INCREMENT,
  `staffType` char(16) NOT NULL DEFAULT '',
  `userId` int(8) NOT NULL,
  PRIMARY KEY (`staffId`,`userId`),
  KEY `R_16` (`userId`),
  CONSTRAINT `R_16` FOREIGN KEY (`userId`) REFERENCES `User` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Staff` WRITE;
/*!40000 ALTER TABLE `Staff` DISABLE KEYS */;

INSERT INTO `Staff` (`staffId`, `staffType`, `userId`)
VALUES
	(23,'Admin',2),
	(24,'Admin',3),
	(25,'Admin',1),
	(26,'Staff',10),
	(27,'Staff',4),
	(28,'Staff',5),
	(29,'Staff',9),
	(30,'Staff',6),
	(31,'Staff',7);

/*!40000 ALTER TABLE `Staff` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table User
# ------------------------------------------------------------

DROP TABLE IF EXISTS `User`;

CREATE TABLE `User` (
  `userId` int(8) NOT NULL AUTO_INCREMENT,
  `name` char(128) NOT NULL DEFAULT '',
  `email` varchar(256) NOT NULL DEFAULT '',
  `address` varchar(256) NOT NULL DEFAULT '',
  `city` varchar(64) NOT NULL DEFAULT '',
  `phone` varchar(16) NOT NULL DEFAULT '',
  `pwd` varchar(32) NOT NULL DEFAULT '',
  `active` char(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;

INSERT INTO `User` (`userId`, `name`, `email`, `address`, `city`, `phone`, `pwd`, `active`)
VALUES
	(1,'Ann Webb','awebb0@devhub.com','670 Warner Way','Makamba','903-39-4385','XWTKjz2','Active'),
	(2,'Andrew Mendoza','amendoza1@privacy.gov.au','26 Cambridge Hill','Roskoshnyy','337-38-5945','DJOCtWmpS','Active'),
	(3,'Kathryn Wagner','kwagner2@mayoclinic.com','34 Independence Lane','Osieczany','581-88-8114','zlikt7Nsmru','Active'),
	(4,'Aaron Little','alittle3@toplist.cz','4367 Blackbird Court','Arles','692-59-0908','CQZDc2K','Active'),
	(5,'Theresa Schmidt','tschmidt4@cdbaby.com','03 Brickson Park Road','Huxi','880-66-9029','TqoMBXIP','Active'),
	(6,'Cynthia Garrett','cgarrett5@cyberchimps.com','53 Calypso Plaza','Ust’-Labinsk','992-17-7572','migniec9Y','Active'),
	(7,'Joan Johnston','jjohnston6@statcounter.com','6082 Straubel Lane','Novomoskovsk','849-31-4932','IWQQryyYq','Active'),
	(8,'Paula Elliott','pelliott7@google.it','05046 Macpherson Place','Zhangye','549-11-9804','F1H0krdOmf','Active'),
	(9,'Brandon Parker','bparker8@bigcartel.com','36431 Raven Street','Nagrog','115-62-3623','fW6fmk0','Active'),
	(10,'Brandon Ruiz','bruiz9@cafepress.com','58918 Glacier Hill Road','Khon Kaen','741-83-5489','Bor6Ic','Active'),
	(11,'Gerald Armstrong','garmstronga@twitpic.com','36187 Scoville Circle','K?enovice','741-49-8342','ehcWZ8aV7kkV','Active'),
	(12,'Martin Duncan','mduncanb@nps.gov','9 Karstens Trail','Vónitsa','726-01-4105','4f5vrgS94xY','Active'),
	(13,'Lisa Martinez','lmartinezc@sitemeter.com','54539 Dixon Junction','San Isidro','536-39-6781','92yERtDD','Active'),
	(14,'Judy Woods','jwoodsd@newyorker.com','58797 Scofield Terrace','Alvaiázere','342-81-0359','8dNnh8nSbq','Active'),
	(15,'Thomas Roberts','trobertse@so-net.ne.jp','49970 Service Place','Boyang','132-47-2292','5PnqhMYVvOs','Active'),
	(16,'Jose Marshall','jmarshallf@github.io','38 Mayfield Avenue','Polen','512-68-1334','IYuil80','Active'),
	(17,'Frank Rose','froseg@github.com','8901 Monterey Alley','Minna','206-83-9544','asdf','Active'),
	(18,'Shawn Morrison','smorrisonh@sun.com','491 Old Gate Alley','Vila Nova','554-12-9775','lAL6r7QKQ5tp','Active'),
	(19,'Anne Hart','aharti@admin.ch','68479 Artisan Lane','Cajabamba','360-62-1390','m1nGsdz','Active'),
	(20,'Rebecca Hernandez','rhernandezj@nyu.edu','0 Stoughton Drive','Täby','723-53-5992','2Qr2R6Ka','Active'),
	(21,'Jane Flores','jfloresk@51.la','00 Karstens Point','Amagarapati','915-52-2009','ie9lg2','Active'),
	(22,'Christopher Cunningham','ccunninghaml@yale.edu','45 Pearson Way','Jankomir','816-25-2374','UiYxAiVefUMj','Active'),
	(23,'Anthony Peterson','apetersonm@jiathis.com','7491 Mendota Circle','Kostryzhivka','443-31-5861','4JT6FmP','Active'),
	(24,'Russell Roberts','rrobertsn@zdnet.com','8185 Hooker Court','Oshnav?yeh','386-18-3713','i0DQY2s','Active'),
	(25,'Marilyn Nelson','mnelsono@cnbc.com','81 School Road','Bagong Barrio','825-39-1889','2TvFE15mQeOH','Active'),
	(26,'Ernest Mendoza','emendozap@washingtonpost.com','6 Forster Center','Kotabaru','705-82-4005','pc859u','Active'),
	(27,'Gerald Kelly','gkellyq@macromedia.com','1031 Clarendon Terrace','Nha Trang','494-26-7304','EhUoEX','Active'),
	(28,'Robert Dunn','rdunnr@mlb.com','095 Beilfuss Hill','Al Mu?ayrif?','469-45-2128','KUm0YuBuCjNG','Active'),
	(29,'Amanda King','akings@utexas.edu','5635 Weeping Birch Plaza','Matsudo','944-47-8701','XkhLNEMx','Active'),
	(30,'Lawrence Hunt','lhuntt@businesswire.com','608 Marquette Street','Pasirmukti','780-84-8271','C6Q6dUoWV53','Active'),
	(31,'Steven Carroll','scarrollu@columbia.edu','76 Prairieview Terrace','Aksu','967-45-0317','bpN48nKHa','In-Active'),
	(32,'Heather Hernandez','hhernandezv@gnu.org','96382 Sutteridge Way','Shangzhuang','128-97-9934','I3MWTBq','Active'),
	(33,'Brian Fuller','bfullerw@miitbeian.gov.cn','15461 Commercial Court','Igurusi','341-36-6875','HL9hKzMlU9s','Active'),
	(34,'Diana Duncan','dduncanx@instagram.com','677 Sauthoff Junction','Gyigang','341-17-5050','IWliIF','Active'),
	(35,'Susan Rodriguez','srodriguezy@aol.com','1 Graceland Way','P?lang','931-56-3986','hm68D6orQ','Active'),
	(36,'Alice Sims','asimsz@dailymail.co.uk','0340 6th Lane','H?n','899-94-7915','XcXm97xDZ','Active'),
	(37,'Roger Payne','rpayne10@skyrock.com','82628 Iowa Park','Prigrevica','502-31-3838','4vxj06WCpvp','Active'),
	(38,'Melissa Stephens','mstephens11@engadget.com','8 Thierer Hill','Hulu','495-28-3945','vGSK7mz5A2H','Active'),
	(39,'Judy Myers','jmyers12@berkeley.edu','28 Lukken Hill','Biskamzha','793-77-7390','EOA4Rx','Active'),
	(40,'Joshua Jackson','jjackson13@cocolog-nifty.com','13969 Parkside Road','G?ogów Ma?opolski','203-50-2747','sQwYJhPVi8B','Active'),
	(41,'Patricia Johnson','pjohnson14@ftc.gov','4707 Reinke Pass','Gradizhsk','798-05-8442','OGALV78','Active'),
	(42,'Aaron Harper','aharper15@howstuffworks.com','8 Straubel Circle','Bernal','450-80-9380','mdth6O','Active'),
	(43,'Sandra Gardner','sgardner16@economist.com','8806 Katie Terrace','Rantaupanjangkiri','732-42-7212','ZTJjATFzO5','Active'),
	(44,'Michael Cole','mcole17@boston.com','85 Del Sol Road','Mander','169-07-0964','JT59Mmhot','In-Active'),
	(45,'Beverly Jenkins','bjenkins18@sun.com','560 Algoma Circle','Mizhuang','750-53-5331','ZKgLry','Active'),
	(46,'Kathleen Wallace','kwallace19@meetup.com','11364 Huxley Road','Ialoveni','457-23-3680','Y1oZU6epVV','Active'),
	(47,'Paula Banks','pbanks1a@360.cn','97 Oakridge Trail','Saint-Jean-de-Luz','151-23-1856','jE0x50BqmGo','Active'),
	(48,'Beverly Rodriguez','brodriguez1b@wordpress.org','83748 Claremont Circle','Xinbu','754-89-9306','xOn6jSBIzw2F','Active'),
	(49,'Kelly Wood','kwood1c@plala.or.jp','346 Porter Road','Partille','587-86-8854','J52n7eR1ZRxz','Active'),
	(50,'Amanda Oliver','aoliver1d@t.co','3 Norway Maple Junction','Purwodadi','351-84-1118','2YaTL3Dtaju','In-Active'),
	(51,'Scott Moreno','smoreno1e@uiuc.edu','0196 Lighthouse Bay Center','Stare Miasto','868-06-6919','qo02OLVRe','Active'),
	(52,'Sara Weaver','sweaver1f@wordpress.com','897 Ruskin Drive','Calanogas','281-09-2549','tNM9EBfm','Active'),
	(53,'Ann Brown','abrown1g@cbc.ca','44936 Lyons Junction','Al Manzilah','871-68-3483','FToXrQvN','Active'),
	(54,'Diane Sullivan','dsullivan1h@globo.com','36283 Nobel Hill','Jiandou','221-31-8388','tC2uIe','Active'),
	(55,'Earl Johnston','ejohnston1i@nih.gov','01095 Menomonie Hill','Masaling','710-90-2770','YKcBTSeoN5s','Active'),
	(56,'Craig Willis','cwillis1j@cbslocal.com','978 Darwin Terrace','Quime','700-82-2956','LBEQD9WoB','Active'),
	(57,'Brenda Henderson','bhenderson1k@gizmodo.com','08 Melvin Park','Sandakan','907-14-8108','P0ZX0GjvuUZ','Active'),
	(58,'Brian Perkins','bperkins1l@gnu.org','9 Oriole Lane','Genting','597-92-5007','I85qIRyiJG','Active'),
	(59,'Carol Washington','cwashington1m@istockphoto.com','86462 Fallview Terrace','Mbouda','282-18-1901','khLsplFuNTcD','In-Active'),
	(60,'Marie Reid','mreid1n@freewebs.com','0198 Namekagon Lane','Tanjungsari Barat','761-04-8713','EOnILor4YjC','Active'),
	(61,'Gregory Cooper','gcooper1o@diigo.com','6322 Twin Pines Drive','Kvissleby','789-11-8181','4DJ1jZYb0y','Active'),
	(62,'Wanda Adams','wadams1p@google.it','0558 Pond Court','Sh?eli','635-43-5025','asdfqwer','Active'),
	(63,'Bobby Mcdonald','bmcdonald1q@cam.ac.uk','1981 Nelson Road','Poiares','230-58-9126','GAf6qqd8m','Active'),
	(64,'Nancy Long','nlong1r@parallels.com','876 Haas Trail','Ottawa','738-84-6375','nIm5IuwXYxi','Active'),
	(65,'Roy Reyes','rreyes1s@slate.com','57 Stone Corner Way','Suzuka','844-74-7434','BvJwONM','Active'),
	(66,'John Baker','jbaker1t@wunderground.com','6 Chinook Terrace','Hariang','150-50-5780','06RLbd1Jq419','Active'),
	(67,'Earl Phillips','ephillips1u@answers.com','9736 Drewry Lane','Tuchola','789-81-7183','tSAyokpw','Active'),
	(68,'Jose Jacobs','jjacobs1v@smugmug.com','14901 Lakeland Street','Kertayuga','251-54-1010','ACMXqexLllM','Active'),
	(69,'Diane Woods','dwoods1w@disqus.com','7339 Merrick Road','Xipu','434-89-8708','gjgw4An','Active'),
	(70,'Brenda Moreno','bmoreno1x@theatlantic.com','598 Steensland Park','Bojong','715-05-8462','6uECPuP','Active'),
	(71,'Frank Richardson','frichardson1y@disqus.com','16787 Westridge Circle','La Huerta','797-15-9791','cUHXLxqo93o','Active'),
	(72,'Howard James','hjames1z@umn.edu','68 Cambridge Lane','Tianshan','308-61-0398','RgX2ff','Active'),
	(73,'Beverly Cunningham','bcunningham20@weebly.com','39 Bobwhite Court','Alhambra','366-58-1514','efiYfZn5CQ','Active'),
	(74,'Dennis Ramos','dramos21@eepurl.com','6658 Grayhawk Park','Iturama','426-28-3565','IcDrFcD2YlN','Active'),
	(75,'Ryan Butler','rbutler22@engadget.com','89 Pennsylvania Avenue','Sovetskaya Gavan’','190-89-9253','jrJ9pM','Active'),
	(76,'Jeffrey Jacobs','jjacobs23@forbes.com','0832 Ryan Road','Sergokala','684-93-5592','xYFx8ImX','Active'),
	(77,'David Peterson','dpeterson24@wikispaces.com','6 Fair Oaks Alley','Iquique','301-10-7637','KhVIHCd7','Active'),
	(78,'Judy Chapman','jchapman25@nbcnews.com','501 Oneill Lane','Jianshan','443-29-8630','bA7z8aiLMlv','Active'),
	(79,'Shirley Meyer','smeyer26@jigsy.com','21 Kedzie Center','Jinshi','193-33-7018','0MPr1CZ9qrj','Active'),
	(80,'Anna Phillips','aphillips27@yellowbook.com','49089 Coolidge Way','Panev?žys','586-82-5362','qadCTSgSm','Active'),
	(81,'Ernest Nelson','enelson28@cbc.ca','5370 Schmedeman Pass','Caieiras','129-80-2496','x7rWxH5qWg','Active'),
	(82,'Jesse Campbell','jcampbell29@census.gov','082 5th Pass','Gýtheio','471-30-0183','xMc4P6Ntrh','Active'),
	(83,'Ronald Larson','rlarson2a@delicious.com','239 Haas Avenue','Breda','136-31-0761','inqv5LKA1','Active'),
	(84,'Patricia Rose','prose2b@ftc.gov','11248 Bellgrove Alley','Admiralteisky','929-25-9840','h0Z3dhB','Active'),
	(85,'Shawn Duncan','sduncan2c@storify.com','97944 Wayridge Trail','Guarabira','570-10-9872','Ivwgvp6','Active'),
	(86,'Sean Patterson','spatterson2d@vinaora.com','51 Moulton Avenue','Huarong Chengguanzhen','592-65-3989','A4YhEz7','Active'),
	(87,'Ruth Austin','raustin2e@sitemeter.com','3 Roth Drive','Hechun','860-03-2980','c2SEcbljt','Active'),
	(88,'Catherine Thompson','cthompson2f@storify.com','59329 Brown Park','Cibunut','633-33-5113','gj00VG','Active'),
	(89,'Daniel Fowler','dfowler2g@sakura.ne.jp','8 Mayfield Center','Hirara','685-01-5581','zKrZgRgUg','Active'),
	(90,'Gary Wood','gwood2h@wunderground.com','1 Michigan Point','Zlatni Pyasatsi','626-90-5785','Hq8swXlHxF','Active'),
	(91,'Ernest Bradley','ebradley2i@independent.co.uk','73146 Fisk Crossing','Arma','646-75-1191','5KwEZf6P','Active'),
	(92,'Steven Dean','sdean2j@edublogs.org','0285 Huxley Court','Mertert','866-27-6577','8fDIdv6nvvVp','Active'),
	(93,'Sandra Stephens','sstephens2k@bbc.co.uk','10 Barby Park','Clarines','567-92-9572','1wj45O','Active'),
	(94,'Sean Wallace','swallace2l@aol.com','54 Wayridge Terrace','?ukowa','591-69-8273','2rrgc7bk','Active'),
	(95,'Tina Howard','thoward2m@exblog.jp','20695 Delaware Pass','Deán Funes','455-93-1857','2NQki0998I7u','Active'),
	(96,'Edward Scott','escott2n@xing.com','19188 Hazelcrest Point','Matanog','633-44-2553','ZR4BRBQdqc','Active'),
	(97,'Roy Brown','rbrown2o@mysql.com','91 Manufacturers Park','Escazú','667-40-7970','ggyQZQ7','Active'),
	(98,'Eric Barnes','ebarnes2p@oakley.com','73 Southridge Avenue','G‘azalkent','220-45-1489','6kAjWgtBu9','Active'),
	(99,'John Boyd','jboyd2q@about.com','89901 Forster Plaza','København','787-19-4243','lmOhDYAoC','Active'),
	(100,'Martin Griffin','mgriffin2r@soup.io','8 Truax Avenue','Campos Gerais','543-26-5565','zXuYK29IehNq','Active');

/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
