-- MySQL Script generated by MySQL Workbench
-- Tue Jul  3 18:14:31 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema xdpm_k11n3
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema xdpm_k11n3
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `xdpm_k11n3` DEFAULT CHARACTER SET utf8 ;
USE `xdpm_k11n3` ;

-- -----------------------------------------------------
-- Table `xdpm_k11n3`.`TieuDe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `xdpm_k11n3`.`TieuDe` (
  `maTieuDe` VARCHAR(10) NOT NULL,
  `tenTieuDe` VARCHAR(45) NULL,
  `loaiDia` VARCHAR(45) NULL,
  `moTa` VARCHAR(200) NULL,
  `thoiGianThue` INT NULL,
  `giaThue` DOUBLE NULL,
  PRIMARY KEY (`maTieuDe`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `xdpm_k11n3`.`BangDia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `xdpm_k11n3`.`BangDia` (
  `maDia` VARCHAR(20) NOT NULL,
  `tinhTrang` VARCHAR(45) NULL,
  `TieuDe_maTieuDe` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`maDia`, `TieuDe_maTieuDe`),
  INDEX `fk_BangDia_TieuDe_idx` (`TieuDe_maTieuDe` ASC),
  CONSTRAINT `fk_BangDia_TieuDe`
    FOREIGN KEY (`TieuDe_maTieuDe`)
    REFERENCES `xdpm_k11n3`.`TieuDe` (`maTieuDe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `xdpm_k11n3`.`KhachHang`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `xdpm_k11n3`.`KhachHang` (
  `maKh` VARCHAR(10) NOT NULL,
  `address` VARCHAR(45) NULL,
  `name` VARCHAR(45) NULL,
  `phoneNum` VARCHAR(12) NULL,
  PRIMARY KEY (`maKh`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `xdpm_k11n3`.`PhieuThue`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `xdpm_k11n3`.`PhieuThue` (
  `ngayThue` DATE NULL,
  `KhachHang_maKh` VARCHAR(10) NOT NULL,
  `BangDia_maDia` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`KhachHang_maKh`, `BangDia_maDia`),
  INDEX `fk_PhieuThue_KhachHang1_idx` (`KhachHang_maKh` ASC),
  INDEX `fk_PhieuThue_BangDia1_idx` (`BangDia_maDia` ASC),
  CONSTRAINT `fk_PhieuThue_KhachHang1`
    FOREIGN KEY (`KhachHang_maKh`)
    REFERENCES `xdpm_k11n3`.`KhachHang` (`maKh`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PhieuThue_BangDia1`
    FOREIGN KEY (`BangDia_maDia`)
    REFERENCES `xdpm_k11n3`.`BangDia` (`maDia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `xdpm_k11n3`.`HoSoTreHan`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `xdpm_k11n3`.`HoSoTreHan` (
  `maHoSo` VARCHAR(10) NOT NULL,
  `phiTreHan` DOUBLE NULL,
  `soLuongDiaTre` INT NULL,
  `KhachHang_maKh` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`maHoSo`, `KhachHang_maKh`),
  INDEX `fk_HoSoTreHan_KhachHang1_idx` (`KhachHang_maKh` ASC),
  CONSTRAINT `fk_HoSoTreHan_KhachHang1`
    FOREIGN KEY (`KhachHang_maKh`)
    REFERENCES `xdpm_k11n3`.`KhachHang` (`maKh`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `xdpm_k11n3`.`ChiTietTre`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `xdpm_k11n3`.`ChiTietTre` (
  `hanTra` DATE NULL,
  `ngayTra` DATE NULL,
  `HoSoTreHan_maHoSo` VARCHAR(10) NOT NULL,
  `BangDia_maDia` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`HoSoTreHan_maHoSo`, `BangDia_maDia`),
  INDEX `fk_ChiTietTre_BangDia1_idx` (`BangDia_maDia` ASC),
  CONSTRAINT `fk_ChiTietTre_HoSoTreHan1`
    FOREIGN KEY (`HoSoTreHan_maHoSo`)
    REFERENCES `xdpm_k11n3`.`HoSoTreHan` (`maHoSo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ChiTietTre_BangDia1`
    FOREIGN KEY (`BangDia_maDia`)
    REFERENCES `xdpm_k11n3`.`BangDia` (`maDia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `xdpm_k11n3`.`PhieuDat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `xdpm_k11n3`.`PhieuDat` (
  `thuTuDat` INT NULL,
  `KhachHang_maKh` VARCHAR(10) NOT NULL,
  `TieuDe_maTieuDe` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`KhachHang_maKh`, `TieuDe_maTieuDe`),
  INDEX `fk_PhieuDat_TieuDe1_idx` (`TieuDe_maTieuDe` ASC),
  CONSTRAINT `fk_PhieuDat_KhachHang1`
    FOREIGN KEY (`KhachHang_maKh`)
    REFERENCES `xdpm_k11n3`.`KhachHang` (`maKh`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PhieuDat_TieuDe1`
    FOREIGN KEY (`TieuDe_maTieuDe`)
    REFERENCES `xdpm_k11n3`.`TieuDe` (`maTieuDe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
