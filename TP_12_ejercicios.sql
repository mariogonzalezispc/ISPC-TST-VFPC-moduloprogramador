/*-------------------------------------------------------*/
/*Ejercicio nro 1*/
/*-------------------------------------------------------*/
CREATE TABLE
    `TST_BD_VFPC`.`Cliente`(
        `DNI` INT NOT NULL,
        `Nro_cliente` INT NOT NULL,
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

DELETE 'Cliente' FROM 'Cliente' 
JOIN 
(SELECT 'Cliente.Nro_cliente' 
FROM 'Cliente' 
join 'historial_compras'
ON ('Cliente.id_historial'='Historial_compras.id_historial') 
WHERE 'Historial_compras.id_historial') 
WHERE 'Historial_compras.id_historial'< '2015-01-01';












SELECT *
FROM `cliente`
JOIN `Historial_compras` ON `Cliente`.`id_historial` = `Dueno`.`DNI`
-- WHERE
--     `Dueno`.`DNI` = '21394947';








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