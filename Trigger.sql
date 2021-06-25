-- SIMPLE TRIGGERS

CREATE TRIGGER edit_customer ON customers
FOR UPDATE
AS
if @@error =0
	print 'update succesfully,the data has changed'


update customers set name='Budi' where customer_id='CUS-000006'

CREATE TRIGGER Insert_customer ON customers
FOR insert
AS
if @@error =0
begin
	print 'data has been added'
end

INSERT INTO Customers VALUES('CUS-000055', 'Meilia', 'Yogyakarta', 'WL002', 2000)


SELECT * FROM Customers

-- TRIGGERS ON DDL

CREATE TRIGGER safety ON DATABASE
FOR DROP_TABLE
AS
	PRINT 'the data in the table very important, should not be deleted!'
	ROLLBACK;

CREATE TABLE coba(
	[cat_id] [char](6) NOT NULL PRIMARY KEY,
	[explanation] [varchar](50) NULL
);

DROP TABLE coba


-- ALTER TRIGGER

ALTER TRIGGER Insert_customer ON customers
FOR insert
AS
if @@error =0
begin
	print 'data berhasil ditambahkan!'
end

INSERT INTO Customers VALUES('CUS-000045', 'Kucing', 'Yogyakarta', 'WL002', 2000)

-- DROP TRIGGER

DROP TRIGGER safety ON DATABASE
DROP TRIGGER edit_customer
DROP TRIGGER insert_customer

-- DISABLE/ENABLE TRIGGER

DISABLE TRIGGER edit_customer ON customers

update customers set name='Meilia' where customer_id='CUS-000006'

ENABLE TRIGGER edit_customer ON customers

update customers set name='Budi' where customer_id='CUS-000006'

SELECT * FROM Customers


-- LATIHAN 1

CREATE Trigger stok_barang on purchase_items
for insert
as
--deklarasi variabel
declare @stok as int
declare @jum_jual as int
declare @kodebarang as varchar(25)
declare @stok_baru as int

select @kodebarang=item_id, @jum_jual=amount from inserted
--cari nilai stok sesuai kode barang yang dijual
select @stok = stok from Items where item_id=@kodebarang
--lakukan perhitungan stok terbaru
select @stok_baru = @stok - @jum_jual
begin transaction
--lakukan perubahan stok ditabel items
update items set stok = @stok_baru where item_id = @kodebarang
if @@error=0
commit transaction
else
rollback transaction

INSERT INTO Purchase_Items VALUES('20160301-00003', 'CG-002-IT000015', 2, 185000, 190000)
INSERT INTO Purchase_Items VALUES('20160301-00001', 'CG-002-IT000018', 20, 135000, 140000)


SELECT * FROM Items
WHERE item_id = 'CG-002-IT000018'
SELECT * FROM Purchase_Items