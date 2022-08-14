/*-------------------------------------------------------*/
/*Paso 01 Creo tabla Carrito Compras                     */
/*-------------------------------------------------------*/
CREATE TABLE
    `TST_BD_VFPC`.`Carrito_compras`(
        `id_carrito` INT NOT NULL AUTO_INCREMENT,
        `articulo_nombre` VARCHAR(60) NULL,
        `Cantidad` INT NULL,
        `Precio` DECIMAL(9,2) NULL,
        `Fecha_compra` DATE NULL,
        `Orden_compra` INT NULL,
        PRIMARY KEY (`id_carrito`)
    ) ENGINE = InnoDB;

/*-------------------------------------------------------*/
/*Comando que elimina  o vacia la tabla Carrito Compras                     */
/*-------------------------------------------------------*/
DROP TABLE `Carrito_compras`;
TRUNCATE TABLE `Carrito_compras`;
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
        '73580.00',
        '2020-03-04',
        '1002'
    ),(
        NULL,
        'Consola de juegos',
        '1',
        '73580',
        '2017-01-14',
        '1003'
    ),(
        NULL,
        'Celular',
        '1',
        '73580',
        '2022-11-09',
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
        '78500',
        '2022-06-01',
        '1006'
    ),(
        NULL,
        'Televisor Samsumg',
        '1',
        '23500',
        '2022-02-02',
        '1007'
    ),(
        NULL,
        'Televisor Sanyo',
        '1',
        '86800',
        '2019-07-01',
        '1008'
    ),(
        NULL,
        'Televisor UHD',
        '1',
        '55800',
        '2022-07-23',
        '1009'
    ),(
        NULL,
        'Consola Sony',
        '1',
        '155800',
        '2022-07-23',
        '1010'
    );

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
        'Consola Sony',
        '2',
        '200000',
        '2022-01-31',
        '1011'
    ),(
        NULL,
        'Consola Sony',
        '1',
        '73580',
        '2016-03-04',
        NULL
    ),(
        NULL,
        'Celular Samsumg',
        '1',
        '23580',
        '2021-09-14',
        NULL
    ),(
        NULL,
        'Consola Sony',
        '1',
        '73580',
        '2022-11-09',
        '1012'
    ),(
        NULL,
        'Consola de Juegos',
        '1',
        '71000',
        '2022-04-04',
        '1013'
    ),(
        NULL,
        'Consola de juegos',
        '1',
        '38500',
        '2021-06-01',
        NULL
    ),(
        NULL,
        'Consolo de juegos',
        '1',
        '24900',
        '2022-02-02',
        '1014'
    ),(
        NULL,
        'Televisor BGH',
        '1',
        '47856',
        '2020-07-01',
        NULL
    ),(
        NULL,
        'Televisor UHD',
        '1',
        '55800',
        '2022-07-23',
        '1015'
    ),(
        NULL,
        'Televisor UHD',
        '1',
        '225800',
        '2022-03-21',
        '1016'
    );



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
        'Consola de juegos',
        '4',
        '189000',
        '2022-05-25',
        '1017'
    ),(
        NULL,
        'Consola de juegos',
        '1',
        '73580',
        '2022-05-27',
        NULL
    ),(
        NULL,
        'Consola de juegos',
        '1',
        '23580',
        '2021-09-14',
        NULL
    ),(
        NULL,
        'Consola de juegos',
        '1',
        '73580',
        '2021-12-19',
        '1018'
    ),(
        NULL,
        'Consola de Juegos',
        '1',
        '71000',
        '2022-08-14',
        '1019'
    ),(
        NULL,
        'Consola de juegos',
        '1',
        '18500',
        '2021-07-11',
        NULL
    ),(
        NULL,
        'Consolo de juegos',
        '1',
        '27900',
        '2022-12-02',
        '1020'
    ),(
        NULL,
        'Televisor BGH',
        '1',
        '47856',
        '2020-07-10',
        NULL
    ),(
        NULL,
        'Televisor UHD',
        '1',
        '55800',
        '2022-07-23',
        '1021'
    ),(
        NULL,
        'Televisor UHD',
        '1',
        '225800',
        '2022-03-27',
        '1022'
    );



/*-------------------------------------------------------*/

