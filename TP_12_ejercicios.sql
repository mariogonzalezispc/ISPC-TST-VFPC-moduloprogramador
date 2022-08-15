/*-------------------------------------------------------*/
/*Ejercicio nro 1*/
/*-------------------------------------------------------*/
CREATE TABLE
    `TST_BD_VFPC`.`Cliente`(
        `DNI` INT NOT NULL,
        `Nro_cliente` INT UNIQUE NOT NULL,
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
        `id_historial` INT NULL,
        PRIMARY KEY (`DNI`),
        FOREIGN KEY (`id_carrito`) REFERENCES `Carrito_compras`(`id_carrito`),
        FOREIGN KEY (`id_historial`) REFERENCES `Historial_compras`(`id_historial`)
    ) ENGINE = InnoDB;
/*-------------------------------------------------------*/
/*Ejercicio nro 2*/
/*-------------------------------------------------------*/
INSERT INTO `Cliente` 
(`DNI`,
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
  `id_historial`)
  VALUES 
  ('21394948',
   '2003',
   'Gonzalez',
   'Fornaro',
   'Mario Alejandro',
   'Luna y cardenas',
   '3040',
   'Alto Alberdi',
   '3514236589',
   '3512456789',
   '52',
   'mario.gonzalez@hotmail.com.ar',
   '2022-08-01',
   '1001',
   '1');
/*-------------------------------------------------------*/
/*Ejercicio nro 3*/
/*-------------------------------------------------------*/
DELETE Cliente 
FROM Cliente 
JOIN Historial_compras
WHERE (SELECT MAX(Historial_compras.Fecha_compra < 2020-08-01));


DELETE Cliente 
FROM Cliente 
JOIN Historial_compras
WHERE curdate() > Historial_compras.Fecha_compra;


/*-------------------------------------------------------*/
/*Ejercicio nro 4*/
/*-------------------------------------------------------*/
UPDATE `Cliente` 
SET `Fecha_Alta` = '2022-08-08' 
WHERE `Cliente`.`DNI` = '21394948'; 
/*-------------------------------------------------------*/
/*Ejercicio nro 5*/
/*-------------------------------------------------------*/
SELECT DNI,
Nro_cliente,
Apellido_paterno,
Nombre,
Edad,
Fecha_Alta,
Fecha_compra,
Orden_compra
FROM Cliente 
INNER JOIN Historial_compras
WHERE Cliente.id_historial = Historial_compras.id_historial
AND Historial_compras.Articulo_nombre = 'Televisor UHD';
/*-------------------------------------------------------*/
/*Ejercicio nro 6*/
/*-------------------------------------------------------*/
SELECT DNI,
Nro_cliente,
Apellido_paterno,
Nombre,
Edad,
Fecha_Alta,
Fecha_compra
FROM Cliente 
INNER JOIN Historial_compras
WHERE Historial_compras.Fecha_compra > '2022-01-01' 
AND Historial_compras.Fecha_compra < '2022-08-14' ;
/*-------------------------------------------------------*/
/*Ejercicio nro 7*/
/*-------------------------------------------------------*/
SELECT 
Articulo_nombre,
Cantidad,
Precio
FROM Historial_compras
WHERE Historial_compras.Fecha_compra 
BETWEEN '2022-07-01' AND '2022-07-31';
/*-------------------------------------------------------*/
/*Ejercicio nro 8*/
/*-------------------------------------------------------*/
SELECT 
id_carrito,
Articulo_nombre,
Cantidad,
Precio
FROM Carrito_compras
WHERE Carrito_compras.Orden_compra = NULL;
/*-------------------------------------------------------*/
/*Ejercicio nro 9*/
/*-------------------------------------------------------*/
UPDATE `Cliente` 
SET 'Cliente.Calle' = 'Libertad',
    'Cliente.Numero' = '123'
WHERE `Cliente`.`DNI` = '12345678';
/*-------------------------------------------------------*/
/*Ejercicio nro 10*/
/*-------------------------------------------------------*/
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE Historial_compras;
/*-------------------------------------------------------*/
/*Ejercicio nro 11*/
/*-------------------------------------------------------*/
SELECT DNI,
Nro_cliente,
Apellido_paterno,
Nombre,
Edad,
Fecha_Alta,
Fecha_compra
FROM Cliente 
INNER JOIN Carrito_compras
WHERE Carrito_compras.Fecha_compra > (DATE(NOW()) - INTERVAL 24 MONTH) 
BETWEEN '2020-07-01' AND '2022-08-14';
AND Orden_compra != NULL;

SELECT DNI,
Nro_cliente,
Apellido_paterno,
Nombre,
Edad,
Fecha_Alta,
Fecha_compra
FROM Cliente 
INNER JOIN Carrito_compras
WHERE Carrito_compras.Fecha_compra AND Orden_compra != NULL
BETWEEN (DATE(NOW()) - INTERVAL 24 MONTH) AND (DATE(NOW()));



ELECT DNI, Nombre, Apellido_paterno, Telefono_cel1
FROM Cliente 
INNER JOIN Historial_compras 
ON Historial_compras.Id_historial=Cliente.Id_historial
WHERE Historial_compras.Orden_compra IS NOT NULL 
AND Historial_compras.Fecha_compra 
BETWEEN '2020-01-01' 
AND '2021-12-31'
HAVING Historial_compras.Fecha_Compra > '2022-01-01';









/*-------------------------------------------------------*/
/*Ejercicio nro 12*/
/*-------------------------------------------------------*/
SELECT DNI,
Nro_cliente,
Apellido_paterno,
Nombre,
Edad,
Fecha_Alta,
Fecha_compra
FROM Cliente 
INNER JOIN Historial_compras
WHERE Historial_compras.Articulo_nombre = 'Consola de juegos' 
AND Cliente.Edad < '35';



