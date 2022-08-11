/*-------------------------------------------------------*/
/*Paso 01 Crea  base de datos para el trabajo practico   */
/*-------------------------------------------------------*/
CREATE DATABASE TST_BD_VFPC;
/*-------------------------------------------------------*/
/*Paso 02 Seleciono la base de datos del TST             */
/*-------------------------------------------------------*/
USE TST_BD_VFPC;
/*-------------------------------------------------------*/
/*Paso 03 Creo tabla Carrito Compras                     */
/*-------------------------------------------------------*/
CREATE TABLE `TST_BD_VFPC`.`Carrito_compras` (
    `id_carrito` INT NOT NULL AUTO_INCREMENT
    `articulo_nombre` VARCHAR(45) NULL,
    `Cantidad` INT NULL,
    `Precio` INT NULL,
    `Fecha_compra` DATE NULL,
    `Orden_compra` INT NULL,
    PRIMARY KEY (`id_carrito`))
     ENGINE = InnoDB;
/*-------------------------------------------------------*/
/*Paso 04 Creo tabla Historial Compras                   */
/*-------------------------------------------------------*/
CREATE TABLE `TST_BD_VFPC`.`Historial_compras` (
    `id_historial` INT NOT NULL AUTO_INCREMENT,
    `Articulo_nombre` VARCHAR(45) NULL,
    `Cantidad` INT NULL,
    `Precio` INT NULL,
    `Fecha_compra` DATE NULL,
    `Orden_compra` INT NULL,
    `id_carrito` INT NULL,
    PRIMARY KEY (`id_historial`)
    FOREIGN KEY (`id_carrito`) REFERENCES `Carrito_compras`(`id_carrito`))
     ENGINE = InnoDB;
/*-------------------------------------------------------*/
/*Paso 05 Creo tabla Cliente                             */
/*-------------------------------------------------------*/
CREATE TABLE `TST_BD_VFPC`.`Cliente` (
    `DNI` INT NOT NULL,
    `Nro_cliente` INT NOT NULL AUTO_INCREMENT,
    `Apellido_paterno` VARCHAR(45) NULL,
    `Apellido_materno` VARCHAR(45) NULL,
    `Nombre` VARCHAR(45) NULL,
    `Calle` VARCHAR(45) NULL,
    `Numero` INT NULL,
    `Barrio` VARCHAR(45) NULL,
    `Telefono_cel1` VARCHAR(45) NULL,
    `Telefono_cel2` VARCHAR(45) NULL,
    `Edad` INT NULL,
    `Email` VARCHAR(45) NULL,
    `Fecha_Alta` DATE NULL,
    `id_carrito` INT NULL,
    `id_istorial` INT NULL,
    PRIMARY KEY (`DNI`)
    FOREIGN KEY (`id_carrito`) REFERENCES `Carrito_compras`(`id_carrito`),
    FOREIGN KEY (`id_historial`) REFERENCES `Historial_compras`(`id_historial`))
    ENGINE = InnoDB;
/*-------------------------------------------------------*/
/*Paso 06 carga clientes                                 */
/*-------------------------------------------------------*/
INSERT INTO `Cliente` (
        `DNI`,
        `Nro_cliente`,
        `Apellido_paterno`,
        `Apellido_materno`,
        `Nombre`,
        `Calle`,
        `Numero`,
        `Barrio`,
        `Telefono_cel1`,
        `Telefono_cel2`,
        `Edad`,
        `Email`,
        `Fecha_Alta`,
        `id_carrito`,
        `id_historial`
        )
VALUES (
        `24569781`,
        `NULL`,
        `Gonzalez`,
        `Fornaro`,
        `Juan`,
        `Pueyrredon`,
        `123`,
        `Nueva Cordoba`,
        `3518123456`,
        `3512456789`,
        `20`,
        `juan.g@gmail.com`,
        `01-08-2018`,
        `NULL`,
        `NULL`
    );
/*-------------------------------------------------------*/