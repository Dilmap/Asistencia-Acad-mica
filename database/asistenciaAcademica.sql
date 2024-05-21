-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema asistenciaacademica
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema asistenciaacademica
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `asistenciaacademica` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `asistenciaacademica` ;

-- -----------------------------------------------------
-- Table `asistenciaacademica`.`programas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `asistenciaacademica`.`programas` (
  `codigo` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(250) NOT NULL,
  PRIMARY KEY (`codigo`))
ENGINE = InnoDB
AUTO_INCREMENT = 240202502
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `asistenciaacademica`.`fichas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `asistenciaacademica`.`fichas` (
  `numero` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `tipoFormacion` VARCHAR(250) NOT NULL,
  `programa_idprograma` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`numero`),
  INDEX `fichas_programa_idprograma_foreign` (`programa_idprograma` ASC) VISIBLE,
  CONSTRAINT `fichas_programa_idprograma_foreign`
    FOREIGN KEY (`programa_idprograma`)
    REFERENCES `asistenciaacademica`.`programas` (`codigo`))
ENGINE = InnoDB
AUTO_INCREMENT = 2930469
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `asistenciaacademica`.`tipo_documento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `asistenciaacademica`.`tipo_documento` (
  `iddocumento` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `tipo_documento` VARCHAR(250) NOT NULL,
  PRIMARY KEY (`iddocumento`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `asistenciaacademica`.`aprendizs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `asistenciaacademica`.`aprendizs` (
  `numeroDocumento` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(250) NOT NULL,
  `tipo_documento_iddocumento` INT UNSIGNED NOT NULL,
  `email` VARCHAR(250) NULL,
  `ficha_idficha` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`numeroDocumento`),
  UNIQUE INDEX `aprendizs_numerodocumento_unique` (`numeroDocumento` ASC) VISIBLE,
  UNIQUE INDEX `aprendizs_email_unique` (`email` ASC) VISIBLE,
  INDEX `aprendizs_ficha_idficha_foreign` (`ficha_idficha` ASC) VISIBLE,
  INDEX `fk_aprendizs_tipo_documento1_idx` (`tipo_documento_iddocumento` ASC) VISIBLE,
  CONSTRAINT `aprendizs_ficha_idficha_foreign`
    FOREIGN KEY (`ficha_idficha`)
    REFERENCES `asistenciaacademica`.`fichas` (`numero`),
  CONSTRAINT `fk_aprendizs_tipo_documento1`
    FOREIGN KEY (`tipo_documento_iddocumento`)
    REFERENCES `asistenciaacademica`.`tipo_documento` (`iddocumento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 1123970379
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `asistenciaacademica`.`instructors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `asistenciaacademica`.`instructors` (
  `numeroDocumento` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(250) NOT NULL,
  `tipo_documento_iddocumento` INT UNSIGNED NOT NULL,
  `email` VARCHAR(250) NULL,
  `contraseña` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`numeroDocumento`),
  UNIQUE INDEX `instructors_numerodocumento_unique` (`numeroDocumento` ASC) VISIBLE,
  UNIQUE INDEX `instructors_email_unique` (`email` ASC) VISIBLE,
  INDEX `fk_instructors_tipo_documento1_idx` (`tipo_documento_iddocumento` ASC) VISIBLE,
  CONSTRAINT `fk_instructors_tipo_documento1`
    FOREIGN KEY (`tipo_documento_iddocumento`)
    REFERENCES `asistenciaacademica`.`tipo_documento` (`iddocumento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `asistenciaacademica`.`asistencias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `asistenciaacademica`.`asistencias` (
  `idasistencia` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `fechaActual` DATE NOT NULL,
  `horaIngreso` TIME NOT NULL,
  `asistio` TINYINT(1) NULL DEFAULT '0',
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
    REFERENCES `asistenciaacademica`.`instructors` (`numeroDocumento`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `asistenciaacademica`.`competencias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `asistenciaacademica`.`competencias` (
  `codigo` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(250) NOT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE INDEX `competencias_codigo_unique` (`codigo` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 240202502
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `asistenciaacademica`.`competencia_fichas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `asistenciaacademica`.`competencia_fichas` (
  `competencia_idcompetencia` BIGINT UNSIGNED NOT NULL,
  `ficha_idficha` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`competencia_idcompetencia`, `ficha_idficha`),
  INDEX `competencia_fichas_ficha_idficha_foreign` (`ficha_idficha` ASC) VISIBLE,
  CONSTRAINT `competencia_fichas_competencia_idcompetencia_foreign`
    FOREIGN KEY (`competencia_idcompetencia`)
    REFERENCES `asistenciaacademica`.`competencias` (`codigo`),
  CONSTRAINT `competencia_fichas_ficha_idficha_foreign`
    FOREIGN KEY (`ficha_idficha`)
    REFERENCES `asistenciaacademica`.`fichas` (`numero`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `asistenciaacademica`.`instructor_competencias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `asistenciaacademica`.`instructor_competencias` (
  `instructor_idinstructor` BIGINT UNSIGNED NOT NULL,
  `competencia_idcompetencia` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`instructor_idinstructor`, `competencia_idcompetencia`),
  INDEX `instructor_competencias_competencia_idcompetencia_foreign` (`competencia_idcompetencia` ASC) VISIBLE,
  CONSTRAINT `instructor_competencias_competencia_idcompetencia_foreign`
    FOREIGN KEY (`competencia_idcompetencia`)
    REFERENCES `asistenciaacademica`.`competencias` (`codigo`),
  CONSTRAINT `instructor_competencias_instructor_idinstructor_foreign`
    FOREIGN KEY (`instructor_idinstructor`)
    REFERENCES `asistenciaacademica`.`instructors` (`numeroDocumento`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `asistenciaacademica`.`instructor_fichas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `asistenciaacademica`.`instructor_fichas` (
  `instructor_idinstructor` BIGINT UNSIGNED NOT NULL,
  `ficha_idficha` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`instructor_idinstructor`, `ficha_idficha`),
  INDEX `instructor_fichas_ficha_idficha_foreign` (`ficha_idficha` ASC) VISIBLE,
  CONSTRAINT `instructor_fichas_ficha_idficha_foreign`
    FOREIGN KEY (`ficha_idficha`)
    REFERENCES `asistenciaacademica`.`fichas` (`numero`),
  CONSTRAINT `instructor_fichas_instructor_idinstructor_foreign`
    FOREIGN KEY (`instructor_idinstructor`)
    REFERENCES `asistenciaacademica`.`instructors` (`numeroDocumento`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;