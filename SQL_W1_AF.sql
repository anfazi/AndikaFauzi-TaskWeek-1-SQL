-- 1. HR Data
-- Select 2 kolom data dari satu tabel
SELECT firstName, lastName from employees;

-- Update gaji yang dibawah $3000 dikalikan 5%
UPDATE payments SET amount = amount * 1.05 WHERE amount < 3000; 

-- 2. Querying data
-- Memilih semua data dari tabel employees
SELECT * FROM employees; 

-- Memilih beberapa data yang akan ditampilkan dari tabel employees
SELECT 
	employeeNumber,
	firstName,
	lastName,
	email
FROM 
	employees; 

 -- Fungsi pencarian tahun terakhir pembayaran dari tanggal yang di inputkan
SELECT
	customerNumber,
	FLOOR(DATEDIFF('2004-01-01', paymentDate)/ 365) as pembayaranAkhir
FROM
	payments;

-- 3. Sorting Data
-- Sorting data berdasarkan nama huruf awal
SELECT
	employeeNumber,
	firstName,
	lastName
FROM 
	employees
ORDER BY
	firstName; 

-- Sorting data berdasarkan nama huruf akhir
SELECT
	employeeNumber,
	firstName,
	lastName
FROM 
	employees
ORDER BY
	firstName DESC; 

-- 4. Filtering Data
-- Mengumpulkan data komentar yang sama menjadi 1 kemudian disajikan secara ascending
SELECT 
	DISTINCT comments
FROM
	orders
ORDER BY 
	comments ASC; 
	
-- 5. Join
-- INNER JOIN tabel orders dan customer row customerNumber yang ditemplekan pada tabel orders
SELECT 
	orderNumber,
	requiredDate,
	shippedDate,
	orders.customerNumber
FROM 
	orders
INNER JOIN customers ON
customers.customerNumber = orders.customerNumber
ORDER BY 
	requiredDate; 
			
-- 6. Agregate
-- Menghitung average amount dari customer
SELECT
	customerNumber,
	AVG(amount)
FROM
	payments
GROUP BY
	customerNumber; 