
/*-------------------------------------------------------*/

/*Paso 04 Creo tabla Historial Compras                   */

/*-------------------------------------------------------*/

CREATE TABLE
    `TST_BD_VFPC`.`Historial_compras`(
        `id_historial` INT NOT NULL AUTO_INCREMENT,
        `Articulo_nombre` VARCHAR(45) NULL,
        `Cantidad` INT NULL,
        `Precio` INT NULL,
        `Fecha_compra` DATE NULL,
        `Orden_compra` INT NULL,
        `id_carrito` INT NULL,
        PRIMARY KEY (`id_historial`),
        FOREIGN KEY (`id_carrito`) REFERENCES `Carrito_compras`(`id_carrito`)
    ) ENGINE = InnoDB;




SELECT * FROM Historial_compras;



SELECT * FROM `Historial_compras` WHERE YEAR(Fecha_compra) = 2022;
