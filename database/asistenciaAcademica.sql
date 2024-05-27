-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: asistenciaacademica
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aprendizs`
--

use asistenciaacademica;

DROP TABLE IF EXISTS `aprendizs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aprendizs` (
  `numeroDocumento` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_documento_iddocumento` int unsigned NOT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ficha_idficha` bigint unsigned NOT NULL,
  PRIMARY KEY (`numeroDocumento`),
  UNIQUE KEY `aprendizs_numerodocumento_unique` (`numeroDocumento`),
  UNIQUE KEY `aprendizs_email_unique` (`email`),
  KEY `aprendizs_ficha_idficha_foreign` (`ficha_idficha`),
  KEY `fk_aprendizs_tipo_documento1_idx` (`tipo_documento_iddocumento`),
  CONSTRAINT `aprendizs_ficha_idficha_foreign` FOREIGN KEY (`ficha_idficha`) REFERENCES `fichas` (`numero`),
  CONSTRAINT `fk_aprendizs_tipo_documento1` FOREIGN KEY (`tipo_documento_iddocumento`) REFERENCES `tipo_documento` (`iddocumento`)
) ENGINE=InnoDB AUTO_INCREMENT=1235255789 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aprendizs`
--

LOCK TABLES `aprendizs` WRITE;
/*!40000 ALTER TABLE `aprendizs` DISABLE KEYS */;
INSERT INTO `aprendizs` VALUES (3244966,'DERWUIN JOSE SOLANO GOMEZ',3,'derwuin_solano@soy.sena.edu.co',2930468),(5129954,'RICARDO JOSUE QUERO NEGRET',3,'ricardo_quero@soy.sena.edu.co',2930468),(5314051,'ANDRÉS OSWALDO ECHEVERRÍA VASQUÉZ',3,'andres_oecheverria@soy.sena.edu.co',2826693),(1001061818,'MATEO DAVID RODRIGUEZ 2RADO',1,'mateo.rodriguez81@soy.sena.edu.co',2930468),(1003251790,'LUIS MANUEL VIZCAÍNO SOSA',1,'luis_mvizcaino@soy.sena.edu.co',2826693),(1003378345,'SEBASTIAN ANDRÉS GUERRA MARTÍNEZ',1,'sebastian_aguerra@soy.sena.edu.co',2826693),(1004362253,'BRAYAN ESTI BRITO VALENCIA',1,'brayan_ebrito@soy.sena.edu.co',2930468),(1005188631,'WENDY YULIETH PEREZ NAVARRO',1,'wendyy_perez@soy.sena.edu.co',2671692),(1006713989,'JOSE DAVID CAMPO MARQUEZ',1,'jose_dcampo1@soy.sena.edu.co',2930468),(1006727469,'OSMEL SMITH GOMEZ OSORIO',1,'osmel_gomez@soy.sena.edu.co',2930468),(1006744467,'JHAIR EPIAYU TILLER',1,'jhair_epiayu@soy.sena.edu.co',2671692),(1006791276,'NEILYS ANDREA ORJUELA COMTRERAS',1,'neilys_orjuela@soy.sena.edu.co',2826693),(1006871315,'OSMAN ELITH BRITO GONZALEZ',1,'osman_brito@soy.sena.edu.co',2930468),(1007537214,'ANA MARÍA CELEDÓN OÑATE',1,'ana_mceledon@soy.sena.edu.co',2826693),(1010052623,'LINNER YAIR QUINTERO EPIEYU',1,'linner_quintero@soy.sena.edu.co',2671692),(1018495344,'LUIS MIGUEL CUELLO MESA',1,'luis_mcuello@soy.sena.co',2826693),(1031940794,'KEVIN STIVEN QUINTERO YEPES',2,'kevins_quinteroy@soy.sena.edu.co',2930468),(1043434038,'LEIDI ESTHER LIZCANO ARROYO',1,'leidi.lizcano@soy.sena.edu.co',2671692),(1053332037,'AURORA CECILIA DÍAZ RODRÍGUEZ',1,'aurora_cdiaz@soy.sena.edu.co',2826693),(1061824271,'JUAN DAVID GAVIRIA GÓMEZ',1,'juan_dgaviria1@soy.sena.edu.co',2826693),(1117504876,'MAUDIN DANIELA VALDERRAMA CARMONA',2,'maudin_valderrama@soy.sena.edu.co',2930468),(1120242695,'ORIANA MILAGROS ARROYO CARILLO',2,'oriana_arroyo@soy.sena.edu.co',2826693),(1120738945,'NEIDER ALFONSO GONZALEZ MENDOZA',1,'neider.gonzalez@soy.sena.edu.co',2930468),(1120739342,'SAMIR ALBERTO DIAZ BRITO',1,'samir_diaz@soy.sena.edu.co',2930468),(1120739821,'JOSÉ MARÍA GOMÉZ SALCEDO',1,'jose_mgomez@soy.sena.edu.co',2826693),(1120740007,'DANILO SAID SOLANO ROYERO',2,'danilo.solano@soy.sena.edu.co',2930468),(1120740617,'JUAN PABLO MENDOZA LOPEZ',1,'juan_pmendozal@soy.sena.edu.co',2930468),(1120740882,'BRAYAN ALFREDO GARCÍA MEDINA',2,'brayan_garcia@soy.sena.edu.co',2826693),(1120746693,'XANDY PAOLA AÑEZ GARCÍA',1,'xandy_anez@soy.sena.edu.co',2826693),(1120748134,'LUIS JAVIER OROZCO PINTO',1,'luis_jorozco@soy.sena.edu.co',2930468),(1120748945,'ARNALDO ANDRES ALVAREZ TORRES',1,'arnaldo_aalvarez@soy.sena.edu.co',2930468),(1120751989,'YISETH MARÍA BARROS BERMUDEZ',1,'yiseth_barros@soy.sena.edu.co',2826693),(1121040400,'LUIS ANGEL',1,'luis.gil4040@soy.sena.edu.co',2671692),(1121044623,'BREICY BREIDERTH MELO BRITO',1,'breicy_melo@soy.sena.edu.co',2826693),(1121296184,'JOSE ANDRES GIL BALLESTEROS',1,'josea_solanog@soy.sena.edu.co',2671692),(1121329386,'DORIS ADRIANA MANCILLA FUENTES',1,'doris_mancilla@soy.sena.esu.co',2930468),(1122396983,'CARLOS ANDRÉS TIRADO RUEDA',1,NULL,2826693),(1122398080,'JOSE DAVID FUENTES GONZALEZ',1,'jose_davidf@soy.sena.edu.co',2930468),(1122399124,'ALEXANDER ENRIQUE LOPERENA SAUNA',1,'aeloperena@soy.sena.edu.co',2671692),(1122400254,'CAMILO ANDRES SANTAREN PERALTA',2,'camilo_santaren@soy.sena.edu.co',2930468),(1122400807,'SANTIAGO ANDRES AMADO AROCHA',2,'santiago_aamado@soy.sena.edu.co',2930468),(1122400939,'DIDIER DAVID TIRADO SANCHEZ',2,'didier_tirado_soy.sena.edu.co',2930468),(1122401973,'EIDER JOSE TORREGROSA ERAZO',1,'eider_torregrosa@soy.sena.edo.co',2930468),(1122414740,'YERALDÍN YUSETH URBINA FUENTES',1,'yeraldin.urbina@soy.edu.co',2826693),(1122808895,'VICTOR DARIO FONSECA RODRIGUEZ',1,'victor_dfonseca@soy.sena.edu.co',2930468),(1122809631,'IGMAR DE JESUS LOZADA BOLIVAR',1,'igmar_lozada@soy.sena.edu.com',2930468),(1122810639,'ALI DAVID AREVALO LEIVA',2,'ali.arevalo@soy.sena.edu.co',2826693),(1122811179,'ANA VICTORÍA TORRES ANDRADE',2,'anav_torres@soy.sena.edu.co',2826693),(1122811493,'DANIELA ANDREA BRITO VANEGAS',2,'daniela_abrito@soy.dana.edu.co',2826693),(1122813758,'MIGUEL FERNANDO ZÁRATE SOLANO',1,'miguel_fzarate@soy.edu.co',2826693),(1123970133,'ONASIS RENÉ GARCÍA CORONADO',1,'onasis_garcia@soy.sena.edu.co',2930468),(1123970245,'WILL SMITH TONCEL MERCADO',1,'will_toncel@soy.sena.edu.co',2826693),(1123970378,'ROBIN DANIEL JIMENEZ FLOREZ',1,'rdjimenez87@soy.sena.edu.co',2671692),(1123970513,'CAMILA ANDREA ARRIETA MANJARREZ',1,'camila_aarrieta@soy.sena.edu.co',2826693),(1123970825,'VICTOR EDUARDO DÍAZ DAZA',2,'vicediaz1@soy.sena.edu.co',2826693),(1123970989,'CAMILO DAVID TONCEL PARODI',2,'camilo_toncel@soy.sena.edu.co',2930468),(1123971105,'ANGEL JAIR CAMPUZANO GAMEZ',2,'angel_campuzano@soy.sena.edu.co',2930468),(1127626567,'LUIS ANDRÉS SANDOVAL DAZA',1,'luis_asandoval@soy.sena.edu.co',2826693),(1193354204,'ESTALIN YOSETH ROMERO FUENTES',1,'eyromero40@soy.sena.edu.co',2826693),(1193360232,'FABIAN YASMITH EPIAYU URIANA',1,'fabian_epiayu@soy.sena.edu.co',2826693),(1193360262,'KENIN DAIN VANEGAS JIMENEZ',1,'kenin_vanegas@soy.sena.edu.co',2826693),(1193360267,'EDIER YESITH ROBLES JIMENEZ',1,'edier_robles_soy.sena.edu.co',2930468),(1193556207,'MIGUEL ANGEL MILLÁN ZÚÑIGA',1,'miguel_amillanz@soy.sena.edu.co',2930468),(1235255788,'LUIS ANTONIO GUERRA RIOBO',1,'luis_aguerrar@soy.sena.edu.co',2930468);
/*!40000 ALTER TABLE `aprendizs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asistencias`
--

DROP TABLE IF EXISTS `asistencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `asistenciaacademica`.`asistencias` (
  `idasistencia` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `fechaActual` DATE NOT NULL,
  `horaIngreso` TIME NOT NULL,
  `asistio` TINYINT(1) NULL DEFAULT '0',
  `horaTarde` TIME NULL,
  `excusaEscrita` TEXT NULL DEFAULT NULL,
  `excusaSoporte` MEDIUMBLOB NULL DEFAULT NULL,
  `aprendiz_idaprendiz` BIGINT UNSIGNED NOT NULL,
  `instructor_idinstructor` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`idasistencia`),
  INDEX `asistencias_aprendiz_idaprendiz_foreign` (`aprendiz_idaprendiz` ASC) VISIBLE,
  INDEX `asistencias_instructor_idinstructor_foreign` (`instructor_idinstructor` ASC) VISIBLE,
  CONSTRAINT `asistencias_aprendiz_idaprendiz_foreign`
    FOREIGN KEY (`aprendiz_idaprendiz`)
    REFERENCES `asistenciaacademica`.`aprendizs` (`numeroDocumento`),
  CONSTRAINT `asistencias_instructor_idinstructor_foreign`
    FOREIGN KEY (`instructor_idinstructor`)
    REFERENCES `asistenciaacademica`.`instructors` (`numeroDocumento`)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencias`
--

LOCK TABLES `asistencias` WRITE;
/*!40000 ALTER TABLE `asistencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `asistencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competencia_fichas`
--

DROP TABLE IF EXISTS `competencia_fichas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `competencia_fichas` (
  `competencia_idcompetencia` bigint unsigned NOT NULL,
  `ficha_idficha` bigint unsigned NOT NULL,
  PRIMARY KEY (`competencia_idcompetencia`,`ficha_idficha`),
  KEY `competencia_fichas_ficha_idficha_foreign` (`ficha_idficha`),
  CONSTRAINT `competencia_fichas_competencia_idcompetencia_foreign` FOREIGN KEY (`competencia_idcompetencia`) REFERENCES `competencias` (`codigo`),
  CONSTRAINT `competencia_fichas_ficha_idficha_foreign` FOREIGN KEY (`ficha_idficha`) REFERENCES `fichas` (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competencia_fichas`
--

LOCK TABLES `competencia_fichas` WRITE;
/*!40000 ALTER TABLE `competencia_fichas` DISABLE KEYS */;
/*!40000 ALTER TABLE `competencia_fichas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competencias`
--

DROP TABLE IF EXISTS `competencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `competencias` (
  `codigo` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `competencias_codigo_unique` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=240202502 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competencias`
--

LOCK TABLES `competencias` WRITE;
/*!40000 ALTER TABLE `competencias` DISABLE KEYS */;
INSERT INTO `competencias` VALUES (210201501,'Ejercer derechos fundamentales del trabajo en el marco de la constitución política y los convenios internacionales.'),(220201501,'APLICACIÓN DE CONOCIMIENTOS DE LAS CIENCIAS NATURALES DE ACUERDO CON SITUACIONES DEL CONTEXTO PRODUCTIVO Y SOCIAL.'),(220501046,'Utilizar herramientas informáticas de acuerdo con las necesidades de manejo de informacion.'),(220501092,'Establecer requisitos de la solución de software de acuerdo con estándares y procedimiento técnico.'),(220501093,'Evaluar requisitos de la solución de software de acuerdo con metodologías de análisis y estándares.'),(220501094,'Estructurar propuesta técnica de servicio de tecnología de la información según requisitos técnicos y normativa.'),(220501095,'Diseñar la solución de software de acuerdo con procedimientos y requisitos técnicos.'),(220501096,'DESARROLLAR LA SOLUCIÓN DE SOFTWARE DE ACUERDO CON EL DISEÑO Y METODOLOGÍAS DE DESARROLLO.'),(220501097,'Implementar la solución de software de acuerdo con los requisitos de operación y modelos de referencia.'),(220501098,'Controlar la calidad del servicio de software de acuerdo con los estándares técnicos.'),(220601501,'APLICAR PRÁCTICAS DE PROTECCIÓN AMBIENTAL, SEGURIDAD Y SALUD EN EL TRABAJO DE ACUERDO CON LAS POLÍTICAS ORGANIZACIONALES Y LA NORMATIVIDAD VIGENTE.'),(230101507,'GENERAR HÁBITOS SALUDABLES DE VIDA MEDIANTE LA APLICACIÓN DE PROGRAMAS DE ACTIVIDAD FÍSICA EN LOS CONTEXTOS PRODUCTIVOS Y SOCIALES.'),(240201064,'Orientar investigación formativa según referentes técnicos.'),(240201524,'DESARROLLAR PROCESOS DE COMUNICACIÓN EFICACES Y EFECTIVOS, TENIENDO EN CUENTA SITUACIONES DE ORDEN SOCIAL, PERSONAL Y.'),(240201526,'Enrique Low Murtra-Interactuar en el contexto productivo y social de acuerdo con principios éticos para la construcción de una cultura de paz.'),(240201528,'Razonar cuantitativamente frente a situaciones susceptibles de ser abordadas de manera matemática en contextos laborales, sociales y personales.'),(240201529,'Gestionar procesos propios de la cultura emprendedora y empresarial de acuerdo con el perfil personal y los requerimientos de los contextos productivo y social.'),(240202501,'INTERACTUAR EN LENGUA INGLESA DE FORMA ORAL Y ESCRITA DENTRO DE CONTEXTOS SOCIALES Y LABORALES SEGÚN LOS CRITERIOS ESTABLECIDOS POR EL MARCO COMÚN EUROPEO DE REFERENCIA PARA LAS LENGUAS.');
/*!40000 ALTER TABLE `competencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fichas`
--

DROP TABLE IF EXISTS `fichas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fichas` (
  `numero` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tipoFormacion` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `programa_idprograma` bigint unsigned NOT NULL,
  PRIMARY KEY (`numero`),
  KEY `fichas_programa_idprograma_foreign` (`programa_idprograma`),
  CONSTRAINT `fichas_programa_idprograma_foreign` FOREIGN KEY (`programa_idprograma`) REFERENCES `programas` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=2930469 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fichas`
--

LOCK TABLES `fichas` WRITE;
/*!40000 ALTER TABLE `fichas` DISABLE KEYS */;
INSERT INTO `fichas` VALUES (2671692,'PRECENCIAL',228118),(2826693,'PRECENCIAL',228118),(2930468,'PRECENCIAL',228118);
/*!40000 ALTER TABLE `fichas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor_competencias`
--

DROP TABLE IF EXISTS `instructor_competencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructor_competencias` (
  `instructor_idinstructor` bigint unsigned NOT NULL,
  `competencia_idcompetencia` bigint unsigned NOT NULL,
  PRIMARY KEY (`instructor_idinstructor`,`competencia_idcompetencia`),
  KEY `instructor_competencias_competencia_idcompetencia_foreign` (`competencia_idcompetencia`),
  CONSTRAINT `instructor_competencias_competencia_idcompetencia_foreign` FOREIGN KEY (`competencia_idcompetencia`) REFERENCES `competencias` (`codigo`),
  CONSTRAINT `instructor_competencias_instructor_idinstructor_foreign` FOREIGN KEY (`instructor_idinstructor`) REFERENCES `instructors` (`numeroDocumento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor_competencias`
--

LOCK TABLES `instructor_competencias` WRITE;
/*!40000 ALTER TABLE `instructor_competencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `instructor_competencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor_fichas`
--

DROP TABLE IF EXISTS `instructor_fichas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructor_fichas` (
  `instructor_idinstructor` bigint unsigned NOT NULL,
  `ficha_idficha` bigint unsigned NOT NULL,
  PRIMARY KEY (`instructor_idinstructor`,`ficha_idficha`),
  KEY `instructor_fichas_ficha_idficha_foreign` (`ficha_idficha`),
  CONSTRAINT `instructor_fichas_ficha_idficha_foreign` FOREIGN KEY (`ficha_idficha`) REFERENCES `fichas` (`numero`),
  CONSTRAINT `instructor_fichas_instructor_idinstructor_foreign` FOREIGN KEY (`instructor_idinstructor`) REFERENCES `instructors` (`numeroDocumento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor_fichas`
--

LOCK TABLES `instructor_fichas` WRITE;
/*!40000 ALTER TABLE `instructor_fichas` DISABLE KEYS */;
/*!40000 ALTER TABLE `instructor_fichas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructors`
--

DROP TABLE IF EXISTS `instructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructors` (
  `numeroDocumento` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_documento_iddocumento` int unsigned NOT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contraseña` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`numeroDocumento`),
  UNIQUE KEY `instructors_numerodocumento_unique` (`numeroDocumento`),
  UNIQUE KEY `instructors_email_unique` (`email`),
  KEY `fk_instructors_tipo_documento1_idx` (`tipo_documento_iddocumento`),
  CONSTRAINT `fk_instructors_tipo_documento1` FOREIGN KEY (`tipo_documento_iddocumento`) REFERENCES `tipo_documento` (`iddocumento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructors`
--

LOCK TABLES `instructors` WRITE;
/*!40000 ALTER TABLE `instructors` DISABLE KEYS */;
/*!40000 ALTER TABLE `instructors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programas`
--

DROP TABLE IF EXISTS `programas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `programas` (
  `codigo` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=240202502 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programas`
--

LOCK TABLES `programas` WRITE;
/*!40000 ALTER TABLE `programas` DISABLE KEYS */;
INSERT INTO `programas` VALUES (228118,'ANALISIS Y DESARROLLO DE SOFTWARE');
/*!40000 ALTER TABLE `programas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_documento`
--

DROP TABLE IF EXISTS `tipo_documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_documento` (
  `iddocumento` int unsigned NOT NULL AUTO_INCREMENT,
  `tipo_documento` varchar(250) NOT NULL,
  PRIMARY KEY (`iddocumento`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_documento`
--

LOCK TABLES `tipo_documento` WRITE;
/*!40000 ALTER TABLE `tipo_documento` DISABLE KEYS */;
INSERT INTO `tipo_documento` VALUES (1,'Cedula de ciudadania'),(2,'Tarjeta de identidad'),(3,'Permiso por proteccion temporal'),(4,'Cedula de extranjería');
/*!40000 ALTER TABLE `tipo_documento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-21  9:58:29
