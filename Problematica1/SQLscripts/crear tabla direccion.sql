CREATE TABLE "tipo_link_direccion" (
	"link_type_id" INTEGER NOT NULL,
	"link_type"  TEXT NOT NULL,
	PRIMARY KEY ("link_type_id" AUTOINCREMENT)
);

INSERT INTO tipo_link_direccion (link_type)
VALUES ("CLIENTE"),
		("EMPLEADO"),
		("SUCURSAL");

CREATE TABLE "direccion"(
	"address_id" INTEGER NOT NULL,
	"link_id" INTEGER NOT NULL,
	"link_type_id" INTEGER NOT NULL,
	"street" TEXT NOT NULL,
	"number" INTEGER NOT NULL,
	"city" TEXT NOT NULL,
	"province" TEXT NOT NULL,
	"country" TEXT NOT NULL,
	PRIMARY KEY ("address_id" AUTOINCREMENT)
	FOREIGN KEY ("link_type_id")
		REFERENCES tipo_link_direccion (link_type_id)
);