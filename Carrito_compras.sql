/*-------------------------------------------------------*/
/*Paso 01 Creo tabla Carrito Compras                     */
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

/*-------------------------------------------------------*/
/*Comando que elimina Carrito Compras                     */
/*-------------------------------------------------------*/
DROP TABLE `Carrito_compras`;
/*-------------------------------------------------------*/
/*Comando que lista Carrito Compras                     */
/*-------------------------------------------------------*/
SELECT * FROM Carrito_compras;








/*-------------------------------------------------------*/
/*Paso 02 cargo registros en carrito de compras          */
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
        NULL,
        'Televisor',
        '1',
        '50000',
        '2018-01-01',
        '1001'
    ),(
        NULL,
        'Celular',
        '1',
        '73580',
        '2018-08-04',
        '1002'
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
        NULL
    ),(
        NULL,
        'Televisor UHD',
        '1',
        '55800',
        '2022-06-01',
        '1101'
    );



/*-------------------------------------------------------*/

