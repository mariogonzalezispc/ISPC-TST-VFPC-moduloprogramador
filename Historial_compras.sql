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
/*-------------------------------------------------------*/
/*Comando que elimina la tabla Historial Compras         */
/*-------------------------------------------------------*/
DROP TABLE `Historial_compras`;
/*-------------------------------------------------------*/
/*Comando que lista Historial Compras                    */
/*-------------------------------------------------------*/
SELECT * FROM Historial_compras;


 
INSERT INTO `TST_BD_VFPC`.`Historial_compras`(
        `id_historial`,
        `Articulo_nombre`,
        `Cantidad`,
        `Precio`,
        `Fecha_compra`,
        `Orden_compra`,
        `id_carrito`
    )
VALUES (
        NULL,
        'Televisor',
        '1',
        '50000',
        '2018-01-01',
        '0001',
        '1001'
    ),(
        NULL,
        'Celular Samsumg',
        '1',
        '50000',
        '2018-01-01',
        '0001',
        '1001'
    ),(
        NULL,
        'Consola de juegos',
        '1',
        '73580',
        '2018-08-04',
        '1003'
    ),(
        NULL,
        'Celular',
        '1',
        '73580',
        '2018-08-04',
        '1004'
    ),(
        NULL,
        'Celular',
        '1',
        '21000',
        '2022-08-04',
        '1005'
    ),(
        NULL,
        'Televisor UHD',
        '1',
        '55800',
        '2022-06-01',
        '1101'
    );










SELECT * FROM `Historial_compras` WHERE YEAR(Fecha_compra) = 2022;
