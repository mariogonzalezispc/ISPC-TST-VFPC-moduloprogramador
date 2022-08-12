
/*-------------------------------------------------------*/
/*Paso 03 Creo tabla Carrito Compras                     */
/*-------------------------------------------------------*/
CREATE TABLE
    `TST_BD_VFPC`.`Carrito_compras`(
        `id_carrito` INT NOT NULL AUTO_INCREMENT,
        `articulo_nombre` VARCHAR(60) NULL,
        `Cantidad` INT NULL,
        `Precio` INT(10) NULL,
        `Fecha_compra` DATE NULL,
        `Orden_compra` INT NULL,
        PRIMARY KEY (`id_carrito`)
    ) ENGINE = InnoDB;

DROP TABLE `Carrito_compras`;

SELECT * FROM Carrito_compras;

/*-------------------------------------------------------*/
/*Paso 04 cargo registros en carrito de compras          */
/*-------------------------------------------------------*/
INSERT INTO
    `TST_BD_VFPC`.`Carrito_compras`(
        `id_carrito`,
        `articulo_nombre`,
        `Cantidad`,
        `Precio`,
        `Fecha_compra`,
        `Orden_compra`
    )
VALUES (
        '1000',
        'Televisor',
        '1',
        '50000',
        '2018-01-01',
        '1001'
    ),(
        '1112',
        'Celular',
        '1',
        '73580',
        '2018-08-04',
        '1002'
    ),
    (
        '1020',
        'Consola de juegos',
        '1',
        '73580',
        '2018-08-04',
        '1002'
    );

/*-------------------------------------------------------*/

