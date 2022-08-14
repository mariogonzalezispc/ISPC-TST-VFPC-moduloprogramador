/*-------------------------------------------------------*/
/*Paso 01 Creo tabla Cliente                             */
/*-------------------------------------------------------*/
CREATE TABLE
    `TST_BD_VFPC`.`Cliente`(
        `DNI` INT NOT NULL,
        `Nro_cliente` INT UNIQUE NOT NULL AUTO_INCREMENT,
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
/*Comando que elimina la tabla Clientes                  */
/*-------------------------------------------------------*/
DROP TABLE `Cliente`;
truncate table `Cliente`;
/*-------------------------------------------------------*/
/*Comando lista registros de la tabla cliente            */
/*-------------------------------------------------------*/
SELECT * FROM Cliente;
/*-------------------------------------------------------*/
/*Paso 0X carga clientes                                 */
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
   NULL,
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
   '3',
   '1'),
  ('41394947',
   NULL,
   'Ramirez',
   'Fiori',
   'Pedro Alfonso',
   'San Luis',
   '18',
   'Obrero',
   '3514236578',
   '3512456666',
   '23',
   'pedro@gmail.com',
   '2022-08-11',
   '1',
   '5'),
  ('43568945',
   NULL,
   'Ferreyra',
   'Leguizamon',
   'Enrique',
   'Maestro Vidal',
   '1080',
   'Los platanos',
   '3514656568',
   '3516876667',
   '25',
   'enrique2@gmail.com',
   '2020-01-02',
   '3',
   '9');
