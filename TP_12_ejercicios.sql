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
SELECT DNI,
Nro_cliente,
Apellido_paterno,
Nombre,
Edad,
Fecha_Alta
FROM `Historial_compras` 
INNER JOIN Cliente
ON Historial_compras.id_historial = Cliente.id_historial
WHERE Fecha_Compra < '2020-01-01';


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
WHERE Historial_compras.Fecha_compra >= '2022-01-01' 
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
/*-------------------------------------------------------*







/*-------------------------------------------------------*/
/*Ejercicio nro 9*/
/*-------------------------------------------------------*



/*-------------------------------------------------------*/
/*Ejercicio nro 10*/
/*-------------------------------------------------------*/
TRUNCATE TABLE `Historial_compras`;





/*-------------------------------------------------------*/
/*Ejercicio nro 11*/
/*-------------------------------------------------------*




/*-------------------------------------------------------*/
/*Ejercicio nro 12*/
/*-------------------------------------------------------*





-- SELECT *
-- FROM `Perro`
--     JOIN `Dueno` ON `Perro`.`DNI_dueno` = `Dueno`.`DNI`
-- WHERE
--     `Dueno`.`DNI` = '21394947';

-- select * from `Historial`;

-- SELECT Producto,
--        max(Fecha) max_fecha
-- FROM Tabla
-- GROUP BY Producto



-- -- SELECT * FROM COMISION where month='10' and year='2016'
-- SELECT * FROM COMISION where year='2016'

-- Resetear PRIMARY KEY
-- ALTER TABLE members DROP ID;
-- ALTER TABLE members AUTO_INCREMENT = 1;
-- ALTER TABLE members ADD ID int UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;