CREATE TABLE "Farmer" (
	"farmer_id"	INTEGER NOT NULL,
	"first_name"	TEXT,
	"last_name"	TEXT,
	"email"	TEXT,
	"zip_code"	INTEGER NOT NULL,
	"contact_number"	INTEGER NOT NULL,
	"current_address"	TEXT,
	"city"	TEXT,
	"state"	TEXT,
	"lat" REAL,
	"long" REAL,
	PRIMARY KEY("farmer_id" AUTOINCREMENT)
);
CREATE TABLE "Expense_Category" (
	"expense_category_id"	INTEGER,
	"category_name"	TEXT,
	"description"	TEXT,
	PRIMARY KEY("expense_category_id" AUTOINCREMENT)
);
CREATE TABLE "Expense" (
	"expense_id"	INTEGER,
	"expense_category_id"	INTEGER NOT NULL,
	"amount"	TEXT,
	"date"	TEXT,
	PRIMARY KEY("expense_id" AUTOINCREMENT),
	FOREIGN KEY("expense_category_id") REFERENCES "Expense_Category"("expense_category_id")
);
CREATE TABLE "Farmer_Expense" (
	"farmer_id"	INTEGER,
	"expense_id"	INTEGER,
	FOREIGN KEY("expense_id") REFERENCES "Expense"("expense_id"),
	FOREIGN KEY("farmer_id") REFERENCES "Farmer"("farmer_id")
);
CREATE TABLE "Product" (
	"product_id"	INTEGER NOT NULL,
	"product_name"	TEXT,
	PRIMARY KEY("product_id" AUTOINCREMENT)
);
CREATE TABLE "Product_Cost" (
	"product_id"	INTEGER NOT NULL,
	"price_per_bundle"	REAL,
	"created_at" TEXT,
	PRIMARY KEY("product_id","created_at"),
	FOREIGN KEY("product_id") REFERENCES "Product"("product_id")
);
CREATE TABLE "Base_Market_Incentive" (
	"product_id"	INTEGER,
	"price"	REAL,
	"date"	TEXT,
	PRIMARY KEY("product_id","date"),
	FOREIGN KEY("product_id") REFERENCES "Product"("product_id")
);
CREATE TABLE "Harvest" (
	"farmer_id"	INTEGER NOT NULL,
	"product_id"	INTEGER NOT NULL,
	"quantity_in_bundles"	INTEGER,
	"updated_at"	TEXT DEFAULT CURRENT_TIMESTAMP,
	"created_at"	TEXT NOT NULL,
	PRIMARY KEY("product_id","farmer_id","created_at"),
	FOREIGN KEY("farmer_id") REFERENCES "Farmer"("farmer_id"),
	FOREIGN KEY("product_id") REFERENCES "Product"("product_id")
);
CREATE TABLE "Customer" (
	"customer_id"	INTEGER NOT NULL,
	"first_name"	TEXT NOT NULL,
	"last_name"	TEXT,
	"email"	TEXT,
	"zip_code"	TEXT,
	"contact_number"	INTEGER NOT NULL,
	"current_address"	TEXT,
	"city"	TEXT,
	"state"	TEXT,
	"latitude" REAL,
	"longitude" REAL,
	PRIMARY KEY("customer_id" AUTOINCREMENT)
);
CREATE TABLE "Orders" (
	"order_id"	INTEGER,
	"customer_id"	INTEGER,
	"shipping_address"	INTEGER,
	"created_at"	TEXT,
	PRIMARY KEY("order_id" AUTOINCREMENT),
	FOREIGN KEY("customer_id") REFERENCES "Customer"("customer_id")
);
CREATE TABLE "Order_Detail" (
	"order_detail_id"	INTEGER,
	"product_id"	INTEGER,
	"order_id"	INTEGER,
	"quantity"	TEXT,
	"total_price" REAL,
	"created_at" TEXT,
	PRIMARY KEY("order_detail_id" AUTOINCREMENT),
	FOREIGN KEY("order_id") REFERENCES "Orders"("order_id"),
	FOREIGN KEY("product_id") REFERENCES "Inventory"("product_id")
);
CREATE TABLE "Transactions" (
	"transaction_id"	INTEGER,
	"order_id"	INTEGER,
	"order_status"	TEXT CHECK(order_status in ("Processing","Shipped","Complete")),
	"timestamp"	TEXT DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY("transaction_id" AUTOINCREMENT),
	FOREIGN KEY("order_id") REFERENCES "Orders"("order_id")
<<<<<<< HEAD
);
=======
)
>>>>>>> ba5d891 (Modified diagrams, DDL, insert and query 2,4)
CREATE TABLE "Payment" (
	"payment_id"	INTEGER NOT NULL,
	"order_id"	INTEGER,
	"payment_method"	INTEGER CHECK(payment_method in ('Cash','UPI','Credit/Debit Card')),
	"amount_paid"	REAL,
	"payment_date"	TEXT,
	PRIMARY KEY("payment_id" AUTOINCREMENT)
	FOREIGN KEY("order_id") REFERENCES "Orders"("order_id")
);
