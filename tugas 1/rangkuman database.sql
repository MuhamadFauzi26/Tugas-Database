/* CARA KONEKSI MYSQL via  TERMINAL */
cd xampp\mysql\bin;
>mysql -u root -p;

/* CARA MENAMPILKAN DATABASE*/
SHOW DATABASES;

/*CARA MEMBUAT DATABASE */
CREAT DATABASE `11rpl_db`;

/*CARA MEMBUAT TABLE*/
CREAT TABLE `siswa` (
    id_siswa INT(11) PRIMARY KET AUTO_INCREMENT,
    nis CHAR(10),
    nama_lengkap VARCHAR(255),
    jk CHAR(1),
    tmp_lahir VARCHAR (255),
    tgl_lahir DATE,
    alamat TEXT,
    no_hp CHAR(15),
    tanggal_entri DATETIME
);

/* CARA MENAMPILKAN TABLE */
SHOW TABLES;

/*CARA MENAMPILKAN SPESIFIKASI TABLE*/
DESCRIBE `siswa`;

/* CARA MENAMBAHKAN RECORD KE TABLE */
INSERT INTO  `siswa` SET
    id_siswa = NULL,
    nis = '1100100',
    nama_lengkap = 'MAULIDIN',
    jk = 'L',
    tmp_lahir = 'SUBANG',
    tgl_lahir = '2002-02-02',
    alamat = 'SUBANG',
    no_hp = '065443524'
    tanggal_entri = NOW();

/* CARA MENAMPILKAN SELURUH DATA TABLE */
SELECT * FROM `siswa`;

/* CARA MENAMPILKAN DATA DENGAN KONDISI TERTENTU */
SELECT * FROM `siswa` WHERE jk = 'P';

/* CARA MENAMPILKAN BEBERAPA/BATAS RECORD PADA TABLE */
SELECT * FROM `siswa` LIMIT 3,5;

/* CARA MENAMPILKAN/MENGURUTKAN RECORD BERDASARKAN FIELD TERTENTU */
SELECT * FROM `siswa` ORDER BY tgl_lahir DESC;

/*CARA MENAMPILKAN FIELD MENGGUNAKAN FUNCTION */
SELECT UPPER(alamat) FROM `siswa`;

/* CARA MENAMPILKAN BEBERAPA FIELD DENGAN KONDISI TERTENTU */
SELECT nama_lengkap, tmp_lahir, tgl_lahir FROM `siswa` WHERE YEAR(tgl_lahir) = `2002`;

/* CARA MEMPERBARUI DATA PADA TABLE */
UPDATE `siswa` SET tmp_lahir = 'BANDUNG', tgl_lahir = '2002-02-02' WHERE id_siswa = '1';

/* CARA MENGHAPUS DATA/RECORD */
DELETE FROM `siswa` WHERE id_siswa = '1';

/* CARA MEMBUKA DATABASE */
USE `11rpl1_db`;
