CREATE table "tipo_cliente"(
	"customer_type_id"	INTEGER NOT NULL,
	"custumer_type"	TEXT NOT NULL,
	PRIMARY KEY("customer_type_id" AUTOINCREMENT)
);

INSERT INTO tipo_cliente (custumer_type)
VALUES ("CLASSIC"),
		("GOLD"),
		("BLACK");
		
ALTER TABLE cliente
ADD COLUMN customer_type_id INTEGER