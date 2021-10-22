-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`department`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`department` (
  `department_seq` INT NOT NULL AUTO_INCREMENT,
  `department_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`department_seq`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`position`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`position` (
  `position_seq` INT NOT NULL AUTO_INCREMENT,
  `position_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`position_seq`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`user_info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`user_info` (
  `id_seq` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `mail` VARCHAR(45) NOT NULL,
  `department_seq` INT NOT NULL,
  `position_seq` INT NOT NULL,
  `photo` VARCHAR(45) NOT NULL,
  `point` INT NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_seq`),
  INDEX `fk_user_info_department1_idx` (`department_seq` ASC),
  INDEX `fk_user_info_rank1_idx` (`position_seq` ASC),
  CONSTRAINT `fk_user_info_department1`
    FOREIGN KEY (`department_seq`)
    REFERENCES `mydb`.`department` (`department_seq`),
  CONSTRAINT `fk_user_info_rank1`
    FOREIGN KEY (`position_seq`)
    REFERENCES `mydb`.`position` (`position_seq`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`authentication`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`authentication` (
  `id_seq` INT NOT NULL,
  `id` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_seq`),
  CONSTRAINT `fk_authentication_user_info1`
    FOREIGN KEY (`id_seq`)
    REFERENCES `mydb`.`user_info` (`id_seq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`mentoring_list`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`mentoring_list` (
  `mentoring_id` INT NOT NULL AUTO_INCREMENT,
  `mentee_id_seq` INT NOT NULL,
  `mentor_id_seq` INT NOT NULL,
  `subject` VARCHAR(45) NOT NULL,
  `way` VARCHAR(45) NOT NULL,
  `content` VARCHAR(500) NOT NULL,
  `review_flag` INT NOT NULL,
  `status` INT NOT NULL,
  PRIMARY KEY (`mentoring_id`),
  INDEX `fk_mentoring_user_info2_idx` (`mentee_id_seq` ASC),
  CONSTRAINT `fk_mentoring_user_info2`
    FOREIGN KEY (`mentee_id_seq`)
    REFERENCES `mydb`.`user_info` (`id_seq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`review_list`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`review_list` (
  `review_id` INT NOT NULL AUTO_INCREMENT,
  `mentoring_id` INT NOT NULL,
  `mentee_id_seq` INT NOT NULL,
  `mentor_id_seq` INT NOT NULL,
  `content` VARCHAR(45) NOT NULL,
  `photo` VARCHAR(45) NULL DEFAULT NULL,
  `date` DATE NOT NULL,
  PRIMARY KEY (`review_id`),
  INDEX `fk_review_mentoring_copy11_idx` (`mentoring_id` ASC),
  INDEX `fk_review_user_info1_idx` (`mentee_id_seq` ASC),
  CONSTRAINT `fk_review_mentoring_copy11`
    FOREIGN KEY (`mentoring_id`)
    REFERENCES `mydb`.`mentoring_list` (`mentoring_id`),
  CONSTRAINT `fk_review_user_info1`
    FOREIGN KEY (`mentee_id_seq`)
    REFERENCES `mydb`.`user_info` (`id_seq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
