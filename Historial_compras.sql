/*-------------------------------------------------------*/
/*Paso 04 Creo tabla Historial Compras                   */
/*-------------------------------------------------------*/
CREATE TABLE
    `TST_BD_VFPC`.`Historial_compras`(
        `id_historial` INT AUTO_INCREMENT,
        `Articulo_nombre` VARCHAR(45) NULL,
        `Cantidad` INT NULL,
        `Precio` DECIMAL(9,2) NULL,
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
TRUNCATE TABLE `Historial_compras`;
/*-------------------------------------------------------*/
/*Comando que lista Historial Compras                    */
/*-------------------------------------------------------*/
SELECT * FROM Historial_compras;
/*-------------------------------------------------------*/  

INSERT INTO `Historial_compras` 
(`id_historial`,
 `Articulo_nombre`,
 `Cantidad`,
 `Precio`,
 `Fecha_compra`,
 `Orden_compra`,
 `id_carrito`) 
 VALUES 
(NULL,
 'Consola de juegos',
 '1',
 '56896',
 '2022-08-08',
 '1020',
 '1'),(
 NULL,
 'Celular Samsumg',
 '1',
 '50000',
 '2018-01-01',
 '1021',
 '2'
),(
 NULL,
 'Televisor UHD',
 '1',
 '73563',
 '2022-08-01',
 '1003',
 '3'
),(
 NULL,
 'Celular Samsumg',
 '1',
 '50000',
 '2018-01-01',
 '1004',
 '4'
),(
 NULL,
 'Consola de juegos',
 '2',
 '89563',
 '2022-03-21',
 '1005',
 '5'
),(
 NULL,
 'Televisor UHD',
 '1',
 '75000',
 '2019-04-22',
 '1006',
 '6'
),(
 NULL,
 'Consola de juegos',
 '2',
 '89563',
 '2022-03-21',
 '1007',
 '5'
),(
 NULL,
 'Televisor UHD',
 '2',
 '76000',
 '2020-03-21',
 '1008',
 '6'
),(
 NULL,
 'Consola de juegos',
 '2',
 '89563',
 '2022-03-21',
 '1009',
 '7'
),(
 NULL,
 'Televisor UHD',
 '3',
 '72000',
 '2022-07-11',
 '1010',
 '8'
),(
 NULL,
 'Televisor UHD',
 '1',
 '56894',
 '2022-02-28',
 '1009',
 '9'
),(
 NULL,
 'Consola de juegos',
 '1',
 '73569',
 '2021-09-21',
 '1010',
 '10'
),(
 NULL,
 'Televisor UHD',
 '1',
 '67852',
 '2022-11-27',
 '1011',
 '11'
),(
 NULL,
 'Televisor UHD',
 '1',
 '67852',
 '2022-07-27',
 '1031',
 '9'
),(
 NULL,
 'Celular Motorola',
 '1',
 '15000',
 '2011-07-27',
 '1031',
 '8'
);








SELECT * FROM `Historial_compras` WHERE YEAR(Fecha_compra) = 2022;
