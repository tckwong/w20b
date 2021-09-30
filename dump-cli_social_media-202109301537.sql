-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: 34.82.152.114    Database: cli_social_media
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.21-MariaDB-1:10.4.21+maria~stretch

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `exploits`
--

DROP TABLE IF EXISTS `exploits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exploits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `exploits_FK` (`user_id`),
  CONSTRAINT `exploits_FK` FOREIGN KEY (`user_id`) REFERENCES `hackers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1205 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exploits`
--

LOCK TABLES `exploits` WRITE;
/*!40000 ALTER TABLE `exploits` DISABLE KEYS */;
INSERT INTO `exploits` VALUES (1001,'Wrizub bay...',4),(1002,'Dy tholickafy.',8),(1003,'Tricarg lieffosatselchoe, cus naiz...',5),(1004,'Skant holf noosangrench; nundeeseexurt.',9),(1005,'Hofas, praisellyurt.',9),(1006,'Gledy osest...',8),(1007,'Arfifoa nont jats meeck!',5),(1008,'Tef fesarell jeely kaidda.',8),(1009,'Peangeingetiedly chingoazzolmer knalde jezanting.',1),(1010,'Ionkid hagi obist...',5),(1011,'Gnodough clollaree istios, sloornol.',8),(1012,'Keseppon; threwasaigses, fleezap mough.',6),(1013,'Sise, ankewito!',4),(1014,'Sech plism pled; bemp.',8),(1015,'Polyell, englatsels bainkeds!',4),(1016,'Errok dis.',9),(1017,'Issin anixing, packots zaipegsaf.',7),(1018,'Tarbough slitch.',4),(1019,'Droly tha?',3),(1020,'Mo mees?',1),(1021,'Erne, delsism learemblank souttesation.',7),(1022,'Noorcemp rickesing...',1),(1023,'Ickas cla thedate.',5),(1024,'Raty smeaxorreng brengied dind...',1),(1025,'Pixes agseez, esek wreetch!',9),(1026,'Liemed ecoot errension ugoy?',5),(1027,'Ged, thich prebalseeg.',3),(1028,'Sauddasembled, balye; bagsist...',4),(1029,'Tres ste.',6),(1030,'Hiombierm; bogsasorm.',7),(1031,'Gornamblen gu.',5),(1032,'Aiceet effa.',4),(1033,'Lemeertnack olpolsis blorp, thol...',7),(1034,'Laddon; epplec burp spupplation.',6),(1035,'Traigucy skiolly hin asy!',7),(1036,'Orrutsoalp rasticigs hy greesy.',5),(1037,'Moy slion lite alliper?',2),(1038,'Kaitseelfuzzimpont notaught doupplition argate.',2),(1039,'Desipurt gno!',3),(1040,'Fludins ermer gra...',2),(1041,'Glision best!',6),(1042,'Idseeb slomburgy.',3),(1043,'Imont kolengan, vungoas.',9),(1044,'Stosaz pegeds?',3),(1045,'Jegusobes elauc!',8),(1046,'Asce glottamids hack ittac.',5),(1047,'Ceifer naffimnud.',4),(1048,'Meesision gezer.',10),(1049,'Glappation fitter?',9),(1050,'Coarnartnex jaugsollyition.',6),(1051,'Ented norp gadounglif!',7),(1052,'Ergog mision, surkate keteesation.',3),(1053,'Sneemnist taiffawny!',8),(1054,'Trokefist slelkunition taset dussimp.',10),(1055,'Hewusurt wrongels arstond mubif.',4),(1056,'Omprengrissoz fitsed?',6),(1057,'Thalged pleawenky engasast, ter.',7),(1058,'Wielliesite pidd egsank.',5),(1059,'Betteration jorc theelperes...',6),(1060,'Emblell kugsals?',5),(1061,'Jont throgit nodeelsixism.',4),(1062,'Cipell knads.',10),(1063,'Leawut, sous.',10),(1064,'Arriom, pralkafision noolchy...',7),(1065,'Flins, etewion.',10),(1066,'Yatoffy spoferber dreany wawne?',2),(1067,'Engufes slitsey.',8),(1068,'Anchaup norrewision fasu trossurstel.',1),(1069,'Mins plewolser treente blongloost?',1),(1070,'Collyis priffation...',3),(1071,'Cis throalkoost ledomot?',4),(1072,'Speckoown uzzoy noalm?',8),(1073,'Honen sny sisate.',6),(1074,'Spatsintuc flab dotty ioscansedurt...',1),(1075,'Dreds deb allyi?',9),(1076,'Insab thont fy...',10),(1077,'Nombelpauffam nurpeit turnut garist.',4),(1078,'Allyadly zism!',9),(1079,'Fetaipate obbap tarp; ennef...',2),(1080,'Uchugsough thecer flaur nite.',2),(1081,'Engred onkotowly...',4),(1082,'Brasciorfur, sisely...',10),(1083,'Threegsodsoom rusatsoodses edsef.',4),(1084,'Mizzargit nazoorstandy.',2),(1085,'Yer glammut!',10),(1086,'Ascelsism thont thosser dins...',1),(1087,'Flungennodate hietoorly...',6),(1088,'Edsition dreetudd, steler?',4),(1089,'Ebsough feetaissy hont, lew?',5),(1090,'Sortnist clolgemmer, effay blem?',3),(1091,'Egsu iolpy seintodsision ploddep.',8),(1092,'Frin, pokad esay nolsaught?',6),(1093,'Lazes orsty...',3),(1094,'Jens trezzarb froy...',7),(1095,'Spewing preemp, ne cettab?',4),(1096,'Escy lerky tosurfation...',8),(1097,'Fremblomout arbicky.',3),(1098,'Sniedduboy spentell smecarbut fabber.',9),(1099,'Maffesied durpeim...',6),(1100,'Ertny alloy tegsens gomnant?',9),(1101,'Blertnis, lergedd!',3),(1102,'Ya blombion thes snellyatchoos.',3),(1103,'Atsie erroun.',9),(1104,'Owy tank.',6),(1105,'Teewneal, tion, fliffi?',5),(1106,'Cigsup ambles?',1),(1107,'Bimiot snoe flendadd!',2),(1108,'Hoonaurring ussast teigselcheeng ming?',9),(1109,'Brudset blagepporchough; gut flaisturcely!',4),(1110,'Spurt, plough stink...',3),(1111,'Kny, lizzion!',8),(1112,'Bix noorfef, quels, woapplargion.',6),(1113,'Trec turfeelfer, slarner plugsollalpench...',2),(1114,'Kision, dewend stedser!',5),(1115,'Ackessen togaught; nosoppets!',4),(1116,'Tegsiedly sas.',3),(1117,'Iteelfy guscoog?',4),(1118,'Frest bregs yaciffoalped.',7),(1119,'Sough briteal ussoly.',7),(1120,'Leds bustelp pradsoa.',3),(1121,'Smarmin padit stef fiesaiss.',10),(1122,'Attelch diom, brigsigism theang?',4),(1123,'Marb, megsach ipserf!',3),(1124,'Fut ipse ploo.',1),(1125,'Innion ungawn fraisy...',3),(1126,'Osoak japac ousa slarry.',8),(1127,'Rall tamprough!',5),(1128,'Enga radly gout mation.',2),(1129,'Jeescam, geinosceenterb clant.',4),(1130,'Reatch areelfas!',1),(1131,'Flaffierfam uppratsaser bixeb orrin.',2),(1132,'Gogs, goll donesied otsootombision.',3),(1133,'Yigsad rampra ansoalyic?',3),(1134,'Igsi antamp atiel?',9),(1135,'Gres jensiddam apoa itsenew.',9),(1136,'Tuns pollay.',6),(1137,'Mettadser, iostolch soucelell.',1),(1138,'Aidots pengross!',6),(1139,'Stusiss, beerf!',10),(1140,'Iseal zompreses.',10),(1141,'Thied na derition...',5),(1142,'Stezoo pas.',4),(1143,'Sip, zacsto wribist.',6),(1144,'Rint bidolfy weal...',6),(1145,'Doffind triburt fliomorc hupsas...',6),(1146,'Biob, usoss.',10),(1147,'Selite snallyes.',3),(1148,'Pligseimp gnios lepprelly.',9),(1149,'Orbitsance chess clinglut?',4),(1150,'Mormist kawals bo theppros.',3),(1151,'Sa inadoy, ourlister sur.',6),(1152,'Bazance smion; leing...',9),(1153,'Zo gloosiffaus sleemelk.',4),(1154,'Searster felded pasoom; salla.',7),(1155,'Vonded rim quizzatto knods.',9),(1156,'Poa hewion cidision, sky?',6),(1157,'Crastesior ousite...',8),(1158,'Erink, steper ge.',9),(1159,'Asiom thellestee.',9),(1160,'Probsurp, lixick?',5),(1161,'Nick etay yigsidion fetembite?',8),(1162,'Frottem, murt, thised jotenkippleff!',6),(1163,'Zeddadly racengell...',7),(1164,'Gerke febion!',8),(1165,'Gemp lemproa grelf knelepsism...',3),(1166,'Faseal, igernut!',8),(1167,'Ra, rist polp arnuxats...',3),(1168,'Gno isey cliss?',10),(1169,'Tef alough.',2),(1170,'Ni englowly pladdion.',8),(1171,'Ercufiedly refits.',3),(1172,'Tred creazel slose.',10),(1173,'Sengow pei...',1),(1174,'Stay addus!',5),(1175,'Namp, zalm py sleerciny.',4),(1176,'Bastes date mommobb dernoorky!',6),(1177,'Ellyindell bernookist febed.',3),(1178,'Thosse arrision thalsitids.',10),(1179,'Yosa quezism.',1),(1180,'Arstorn lalyontofant ealer...',5),(1181,'Plees slakorbion rionawision.',4),(1182,'Sags, ausicoa cront?',7),(1183,'Dres slarriz dem; wite!',1),(1184,'Coungeppruzzelm cled gringlang dy.',10),(1185,'Talkig; dinge!',9),(1186,'Icai acition prangrism.',1),(1187,'Remp, obbimes narpatsy trew.',1),(1188,'Rengleib esser!',10),(1189,'Stupplins gewnes...',8),(1190,'Heetch smimblerc!',2),(1191,'trfgdfgfgfd',5),(1192,'jack and jones',3),(1193,'Brom plerrough.',9),(1194,'Sloal artnedsalp.',6),(1195,'Jatsaip, egsolm blielletib?',9),(1196,'Ceetsof, han orbip frambloppaught?',4),(1197,'Inti, honsisadly emmed?',1),(1198,'Engrised thizzeration.',4),(1199,'Spats offation slongition!',9),(1200,'Ossad blallyendoy gingrow morlifoormation?',8),(1202,'new explot',3),(1204,'randomness',13);
/*!40000 ALTER TABLE `exploits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hackers`
--

DROP TABLE IF EXISTS `hackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hackers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hackers`
--

LOCK TABLES `hackers` WRITE;
/*!40000 ALTER TABLE `hackers` DISABLE KEYS */;
INSERT INTO `hackers` VALUES (1,'narcissa','password'),(2,'iona','password'),(3,'francie','password'),(4,'yvonne','password'),(5,'deborah','password'),(6,'gareth','password'),(7,'eve','password'),(8,'satyana','password'),(9,'marshall','password'),(10,'katey','password'),(12,'haily','password'),(13,'Nell','password');
/*!40000 ALTER TABLE `hackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'cli_social_media'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-30 15:37:21
