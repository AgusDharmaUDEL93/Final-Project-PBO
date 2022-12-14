CREATE DATABASE IF NOT EXISTS pboproject;
USE pboproject;
CREATE TABLE IF NOT EXISTS transaksi (
    id_transaksi int PRIMARY KEY AUTO_INCREMENT,
    tgl_transaksi datetime,
    tgl_pinjam datetime,
    tgl_kembali datetime,
    id int
);

CREATE TABLE IF NOT EXISTS detail_transaksi(
    id_transaksi int,
    id_barang int,
    jumlah_pinjam int,
    harga_sewa int,
    PRIMARY KEY (id_transaksi, id_barang)
);

CREATE TABLE IF NOT EXISTS user(
    id int PRIMARY KEY auto_increment,
    nama varchar(200),
    email varchar(50),
    password varchar(15),
    roles varchar(10),
    balance int
);

CREATE TABLE IF NOT EXISTS barang(
    id_barang int PRIMARY KEY AUTO_INCREMENT,
    nama_barang int,
    harga_sewa int,
    stock int,
    desc_barang text
);

CREATE TABLE IF NOT EXISTS denda (
    id_denda int PRIMARY KEY AUTO_INCREMENT,
    id_transaksi int,
    id int,
    denda int
);

ALTER TABLE transaksi ADD FOREIGN KEY (id) REFERENCES user(id);
ALTER TABLE detail_transaksi ADD FOREIGN KEY (id_transaksi) REFERENCES transaksi(id_transaksi);
ALTER TABLE detail_transaksi ADD FOREIGN KEY (id_barang) REFERENCES barang(id_barang);
ALTER TABLE denda ADD FOREIGN KEY (id_transaksi) REFERENCES transaksi(id_transaksi);
ALTER TABLE denda ADD FOREIGN KEY (id) REFERENCES user(id);
