CREATE table "marca_tarjeta"(
	"card_brand_id"	INTEGER NOT NULL,
	"card_brand"	TEXT NOT NULL,
	PRIMARY KEY("card_brand_id" AUTOINCREMENT)
);

INSERT INTO marca_tarjeta (card_brand)
VALUES ("VISA"),
		("MASTERCARD"),
		("AMERICAN EXPRESS");
