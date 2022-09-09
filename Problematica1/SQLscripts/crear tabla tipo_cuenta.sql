CREATE table "tipo_cuenta"(
	"account_type_id"	INTEGER NOT NULL,
	"account_type"	TEXT NOT NULL,
	PRIMARY KEY("account_type_id" AUTOINCREMENT)
);

INSERT INTO tipo_cuenta (account_type)
VALUES ("Caja de Ahorro Pesos"),
		("Caja de Ahorro Dolares"),
		("Cuenta Corriente");
		
