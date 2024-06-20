-- Table
CREATE TABLE jenis_produk (
  id BIGSERIAL,
  nama_produk VARCHAR(255),
  satuan VARCHAR(255),
  kategori VARCHAR(255),
  PRIMARY KEY (id)
);

-- Inject
COPY jenis_produk
FROM '/seed/csv/jenis_produk.csv'
WITH (
  FORMAT 'csv',
  DELIMITER ';',
  HEADER TRUE
);
