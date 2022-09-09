/*
Agregar la entidad tarjeta teniendo en cuenta los atributos
necesarios para la operación del home banking (se sugieren los
siguientes campos Numero (único e irrepetible, con una restricción
ante cada inserción que no debe superar 20 números/espacios), CVV,
Fecha de otorgamiento, Fecha Expiración). Almacenar si es una
tarjeta de crédito o débito.
Relacionar las tarjetas con la tabla donde se guardan las marcas de
tarjeta
*/
CREATE TABLE "tipo_tarjeta"(
	"card_type_id"	INTEGER NOT NULL,
	"card_type"	TEXT NOT NULL,
	PRIMARY KEY("card_type_id" AUTOINCREMENT)
);

INSERT INTO tipo_tarjeta (card_type)
VALUES ("DEBITO"),
		("CREDITO")
		
CREATE TABLE "tarjeta" (
	"card_id"	INTEGER NOT NULL,
	"number"	INTEGER NOT NULL UNIQUE,
	"cvv"	INTEGER NOT NULL UNIQUE,
	"start_date"	INTEGER NOT NULL,
	"expire_date"	TEXT NOT NULL,
	"card_type_id"	INTEGER NOT NULL,
	"card_brand_id"	INTEGER NOT NULL,
	"customer_id" INTEGER NOT NULL,
	CHECK(length("number")<=20)
	PRIMARY KEY("card_id" AUTOINCREMENT)
	FOREIGN KEY (card_type_id)
       REFERENCES tipo_tarjeta (card_type_id)
	FOREIGN KEY (card_brand_id)
       REFERENCES marca_tarjeta (card_brand_id)
	FOREIGN KEY (customer_id)
       REFERENCES cliente (customer_id)
);
drop TABLE tarjeta