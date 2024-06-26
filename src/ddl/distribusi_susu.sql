-- Table
CREATE TABLE distribusi_susu (
  id BIGSERIAL,
  tgl_distribusi DATE,
  jumlah NUMERIC(8, 2),
  satuan VARCHAR(255),
  harga_berlaku INT4,
  created_at TIMESTAMP(0),
  updated_at TIMESTAMP(0),
  deleted_at TIMESTAMP(0),
  created_by INT8,
  updated_by INT8,
  deleted_by INT8,
  id_unit_ternak INT8,
  id_jenis_produk INT8,
  id_mitra_bisnis INT8,
  PRIMARY KEY (id)
);

-- Inject
COPY distribusi_susu
FROM '/seed/csv/distribusi_susu.csv'
WITH (
  FORMAT 'csv',
  DELIMITER ';',
  HEADER TRUE
);
