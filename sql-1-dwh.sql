
CREATE TABLE "products" (
  "id" int PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "customers" (
  "id" int PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "orders" (
  "order_number" varchar PRIMARY KEY,
  "customer_id" int,
  "date" date
);

CREATE TABLE "order_lines" (
  "order_line_number" varchar PRIMARY KEY,
  "order_number" varchar,
  "product_id" int,
  "quantity" int,
  "usd_amount" decimal
);

CREATE TABLE "invoices" (
  "invoice_number" varchar PRIMARY KEY,
  "order_number" varchar,
  "date" date
);

CREATE TABLE "payments" (
  "payment_number" varchar PRIMARY KEY,
  "invoice_number" varchar,
  "date" date
);

ALTER TABLE "orders" ADD FOREIGN KEY ("customer_id") REFERENCES "customers" ("id");

ALTER TABLE "order_lines" ADD FOREIGN KEY ("order_number") REFERENCES "orders" ("order_number");

ALTER TABLE "order_lines" ADD FOREIGN KEY ("product_id") REFERENCES "products" ("id");

ALTER TABLE "invoices" ADD FOREIGN KEY ("order_number") REFERENCES "orders" ("order_number");

ALTER TABLE "payments" ADD FOREIGN KEY ("invoice_number") REFERENCES "invoices" ("invoice_number");

INSERT INTO "products" ("id", "name") VALUES (477, 'Laptop X');
INSERT INTO "products" ("id", "name") VALUES (478, 'Phone Y');
INSERT INTO "products" ("id", "name") VALUES (479, 'Tablet Z');

INSERT INTO "customers" ("id", "name") VALUES (3923, 'Ani');
INSERT INTO "customers" ("id", "name") VALUES (3924, 'Budi');
INSERT INTO "customers" ("id", "name") VALUES (3925, 'Caca');

INSERT INTO "orders" ("order_number", "customer_id", "date") VALUES ('ORD-170', 3924, '2020-02-25');
INSERT INTO "orders" ("order_number", "customer_id", "date") VALUES ('ORD-223', 3923, '2020-03-02');
INSERT INTO "orders" ("order_number", "customer_id", "date") VALUES ('ORD-225', 3925, '2020-06-01');
INSERT INTO "orders" ("order_number", "customer_id", "date") VALUES ('ORD-181', 3925, '2020-07-13');
INSERT INTO "orders" ("order_number", "customer_id", "date") VALUES ('ORD-142', 3924, '2020-08-16');
INSERT INTO "orders" ("order_number", "customer_id", "date") VALUES ('ORD-206', 3923, '2020-09-10');
INSERT INTO "orders" ("order_number", "customer_id", "date") VALUES ('ORD-201', 3924, '2020-10-09');
INSERT INTO "orders" ("order_number", "customer_id", "date") VALUES ('ORD-240', 3924, '2020-11-16');
INSERT INTO "orders" ("order_number", "customer_id", "date") VALUES ('ORD-134', 3924, '2020-12-04');
INSERT INTO "orders" ("order_number", "customer_id", "date") VALUES ('ORD-205', 3923, '2021-01-23');

INSERT INTO "invoices" ("invoice_number", "order_number", "date") VALUES ('INV-554', 'ORD-170', '2020-03-09');
INSERT INTO "invoices" ("invoice_number", "order_number", "date") VALUES ('INV-525', 'ORD-223', '2020-03-05');
INSERT INTO "invoices" ("invoice_number", "order_number", "date") VALUES ('INV-549', 'ORD-181', '2020-07-19');
INSERT INTO "invoices" ("invoice_number", "order_number", "date") VALUES ('INV-642', 'ORD-142', '2020-08-22');
INSERT INTO "invoices" ("invoice_number", "order_number", "date") VALUES ('INV-557', 'ORD-206', '2020-09-17');
INSERT INTO "invoices" ("invoice_number", "order_number", "date") VALUES ('INV-581', 'ORD-201', '2020-10-13');
INSERT INTO "invoices" ("invoice_number", "order_number", "date") VALUES ('INV-587', 'ORD-134', '2020-12-13');
INSERT INTO "invoices" ("invoice_number", "order_number", "date") VALUES ('INV-647', 'ORD-205', '2021-02-01');

INSERT INTO "payments" ("payment_number", "invoice_number", "date") VALUES ('PYM-777', 'INV-525', '2020-03-08');
INSERT INTO "payments" ("payment_number", "invoice_number", "date") VALUES ('PYM-817', 'INV-642', '2020-09-17');
INSERT INTO "payments" ("payment_number", "invoice_number", "date") VALUES ('PYM-792', 'INV-557', '2020-10-05');
INSERT INTO "payments" ("payment_number", "invoice_number", "date") VALUES ('PYM-802', 'INV-581', '2020-10-23');
INSERT INTO "payments" ("payment_number", "invoice_number", "date") VALUES ('PYM-761', 'INV-587', '2021-01-11');
INSERT INTO "payments" ("payment_number", "invoice_number", "date") VALUES ('PYM-803', 'INV-647', '2021-02-02');

INSERT INTO "order_lines" ("order_line_number", "order_number", "product_id", "quantity", "usd_amount") VALUES ('ORD-170-01', 'ORD-170', 478, 5, 88.00);
INSERT INTO "order_lines" ("order_line_number", "order_number", "product_id", "quantity", "usd_amount") VALUES ('ORD-170-02', 'ORD-170', 479, 10, 12.00);
INSERT INTO "order_lines" ("order_line_number", "order_number", "product_id", "quantity", "usd_amount") VALUES ('ORD-223-01', 'ORD-223', 479, 5, 6.00);
INSERT INTO "order_lines" ("order_line_number", "order_number", "product_id", "quantity", "usd_amount") VALUES ('ORD-223-02', 'ORD-223', 478, 10, 176.00);
INSERT INTO "order_lines" ("order_line_number", "order_number", "product_id", "quantity", "usd_amount") VALUES ('ORD-223-03', 'ORD-223', 477, 3, 31.50);
INSERT INTO "order_lines" ("order_line_number", "order_number", "product_id", "quantity", "usd_amount") VALUES ('ORD-225-01', 'ORD-225', 477, 4, 42.00);
INSERT INTO "order_lines" ("order_line_number", "order_number", "product_id", "quantity", "usd_amount") VALUES ('ORD-181-01', 'ORD-181', 477, 9, 94.50);
INSERT INTO "order_lines" ("order_line_number", "order_number", "product_id", "quantity", "usd_amount") VALUES ('ORD-142-01', 'ORD-142', 479, 9, 10.80);
INSERT INTO "order_lines" ("order_line_number", "order_number", "product_id", "quantity", "usd_amount") VALUES ('ORD-206-01', 'ORD-206', 479, 9, 10.80);
INSERT INTO "order_lines" ("order_line_number", "order_number", "product_id", "quantity", "usd_amount") VALUES ('ORD-201-01', 'ORD-201', 477, 7, 73.50);
INSERT INTO "order_lines" ("order_line_number", "order_number", "product_id", "quantity", "usd_amount") VALUES ('ORD-240-01', 'ORD-240', 478, 4, 70.40);
INSERT INTO "order_lines" ("order_line_number", "order_number", "product_id", "quantity", "usd_amount") VALUES ('ORD-134-01', 'ORD-134', 479, 3, 3.60);
INSERT INTO "order_lines" ("order_line_number", "order_number", "product_id", "quantity", "usd_amount") VALUES ('ORD-205-01', 'ORD-205', 478, 7, 123.20);


CREATE TABLE efishery."dim_products" (
	"key" serial PRIMARY KEY,
  	"id" int,
  	"name" varchar,
	"start_date" TIMESTAMP WITH TIME ZONE,
	"end_date" TIMESTAMP WITH TIME ZONE,
	"created_date" TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	"updated_date" TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE efishery."dim_customers" (
  	"key" serial PRIMARY KEY,
	"id" int,
  	"name" varchar,
	"start_date" TIMESTAMP WITH TIME ZONE,
	"end_date" TIMESTAMP WITH TIME ZONE,
	"created_date" TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	"updated_date" TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE efishery."fact_orders" (
	"customer_key" int,
	"product_key" int,
	"invoice_number" varchar,
	"payment_number" varchar,
	"order_number" varchar,
	"order_line_number" varchar,
	"invoice_date" date,
	"payment_date" date,
	"order_date" date,
	"quantity" int,
	"usd_amount" decimal,
	"created_date" TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE "fact_orders" ADD FOREIGN KEY ("customer_key") REFERENCES "dim_customers" ("key");

ALTER TABLE "fact_orders" ADD FOREIGN KEY ("product_key") REFERENCES "dim_products" ("key");

INSERT INTO "dim_products" ("id", "name") VALUES (477, 'Laptop X');
INSERT INTO "dim_products" ("id", "name") VALUES (478, 'Phone Y');
INSERT INTO "dim_products" ("id", "name") VALUES (479, 'Tablet Z');

INSERT INTO "dim_customers" ("id", "name") VALUES (3923, 'Ani');
INSERT INTO "dim_customers" ("id", "name") VALUES (3924, 'Budi');
INSERT INTO "dim_customers" ("id", "name") VALUES (3925, 'Caca');

insert into efishery."fact_orders"
select
	c.key customer_key,
	p2.key product_key,
	i.invoice_number,
	p.payment_number,
	o.order_number,
	ol.order_line_number,
	i."date" invoice_date,
	p."date" payment_date,
	o."date" order_date,
	ol.quantity,
	ol.usd_amount
from efishery.invoices i
left join efishery.payments p on i.invoice_number = p.invoice_number
left join efishery.orders o on i.order_number = o.order_number
left join efishery.order_lines ol on o.order_number = ol.order_number
left join efishery.dim_customers c on o.customer_id = c.id
left join efishery.dim_products p2 on ol.product_id = p2.id;
