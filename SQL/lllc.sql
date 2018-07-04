-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 29 Sty 2018, 19:48
-- Wersja serwera: 10.0.32-MariaDB
-- Wersja PHP: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema xdpm_k11n3
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema xdpm_k11n3
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `xdpm_k11n3` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
USE `mydb` ;
USE `xdpm_k11n3` ;

-- -----------------------------------------------------
-- Table `xdpm_k11n3`.`bangdia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `xdpm_k11n3`.`bangdia` (
  `maDia` VARCHAR(20) NOT NULL,
  `tinhTrang` VARCHAR(45) NULL DEFAULT NULL,
  `TieuDe_maTieuDe` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`maDia`, `TieuDe_maTieuDe`),
  INDEX `fk_BangDia_TieuDe_idx` (`TieuDe_maTieuDe` ASC),
  CONSTRAINT `fk_BangDia_TieuDe`
    FOREIGN KEY (`TieuDe_maTieuDe`)
    REFERENCES `mydb`.`tieude` (`matieude`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `xdpm_k11n3`.`chitiettre`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `xdpm_k11n3`.`chitiettre` (
  `hanTra` DATE NULL DEFAULT NULL,
  `ngayTra` DATE NULL DEFAULT NULL,
  `HoSoTreHan_maHoSo` VARCHAR(10) NOT NULL,
  `BangDia_maDia` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`HoSoTreHan_maHoSo`, `BangDia_maDia`),
  INDEX `fk_ChiTietTre_BangDia1_idx` (`BangDia_maDia` ASC),
  CONSTRAINT `fk_ChiTietTre_BangDia1`
    FOREIGN KEY (`BangDia_maDia`)
    REFERENCES `mydb`.`bangdia` (`madia`),
  CONSTRAINT `fk_ChiTietTre_HoSoTreHan1`
    FOREIGN KEY (`HoSoTreHan_maHoSo`)
    REFERENCES `mydb`.`hosotrehan` (`mahoso`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `xdpm_k11n3`.`hosotrehan`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `xdpm_k11n3`.`hosotrehan` (
  `maHoSo` VARCHAR(10) NOT NULL,
  `phiTreHan` DOUBLE NULL DEFAULT NULL,
  `soLuongDiaTre` INT(11) NULL DEFAULT NULL,
  `KhachHang_maKh` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`maHoSo`, `KhachHang_maKh`),
  INDEX `fk_HoSoTreHan_KhachHang1_idx` (`KhachHang_maKh` ASC),
  CONSTRAINT `fk_HoSoTreHan_KhachHang1`
    FOREIGN KEY (`KhachHang_maKh`)
    REFERENCES `mydb`.`khachhang` (`makh`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `xdpm_k11n3`.`khachhang`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `xdpm_k11n3`.`khachhang` (
  `maKh` VARCHAR(10) NOT NULL,
  `address` VARCHAR(45) NULL DEFAULT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `phoneNum` VARCHAR(12) NULL DEFAULT NULL,
  PRIMARY KEY (`maKh`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `xdpm_k11n3`.`phieudat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `xdpm_k11n3`.`phieudat` (
  `thuTuDat` INT(11) NULL DEFAULT NULL,
  `KhachHang_maKh` VARCHAR(10) NOT NULL,
  `TieuDe_maTieuDe` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`KhachHang_maKh`, `TieuDe_maTieuDe`),
  INDEX `fk_PhieuDat_TieuDe1_idx` (`TieuDe_maTieuDe` ASC),
  CONSTRAINT `fk_PhieuDat_KhachHang1`
    FOREIGN KEY (`KhachHang_maKh`)
    REFERENCES `mydb`.`khachhang` (`makh`),
  CONSTRAINT `fk_PhieuDat_TieuDe1`
    FOREIGN KEY (`TieuDe_maTieuDe`)
    REFERENCES `mydb`.`tieude` (`matieude`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `xdpm_k11n3`.`phieuthue`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `xdpm_k11n3`.`phieuthue` (
  `ngayThue` DATE NULL DEFAULT NULL,
  `KhachHang_maKh` VARCHAR(10) NOT NULL,
  `BangDia_maDia` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`KhachHang_maKh`, `BangDia_maDia`),
  INDEX `fk_PhieuThue_KhachHang1_idx` (`KhachHang_maKh` ASC),
  INDEX `fk_PhieuThue_BangDia1_idx` (`BangDia_maDia` ASC),
  CONSTRAINT `fk_PhieuThue_BangDia1`
    FOREIGN KEY (`BangDia_maDia`)
    REFERENCES `mydb`.`bangdia` (`madia`),
  CONSTRAINT `fk_PhieuThue_KhachHang1`
    FOREIGN KEY (`KhachHang_maKh`)
    REFERENCES `mydb`.`khachhang` (`makh`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `xdpm_k11n3`.`tieude`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `xdpm_k11n3`.`tieude` (
  `maTieuDe` VARCHAR(10) NOT NULL,
  `tenTieuDe` VARCHAR(45) NULL DEFAULT NULL,
  `loaiDia` VARCHAR(45) NULL DEFAULT NULL,
  `moTa` VARCHAR(200) NULL DEFAULT NULL,
  `thoiGianThue` INT(11) NULL DEFAULT NULL,
  `giaThue` DOUBLE NULL DEFAULT NULL,
  PRIMARY KEY (`maTieuDe`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
