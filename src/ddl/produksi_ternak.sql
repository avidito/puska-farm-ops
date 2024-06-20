-- Table
CREATE TABLE produksi_ternak (
  id BIGSERIAL,
  tgl_produksi DATE,
  jumlah NUMERIC(8, 2),
  satuan VARCHAR(255),
  sumber_pasokan VARCHAR(255),
  created_at TIMESTAMP(0),
  updated_at TIMESTAMP(0),
  deleted_at TIMESTAMP(0),
  created_by INT8,
  updated_by INT8,
  deleted_by INT8,
  id_unit_ternak INT8,
  id_jenis_produk INT8,
  PRIMARY KEY (id)
);

-- Inject
COPY produksi_ternak
FROM '/seed/csv/produksi_ternak.csv'
WITH (
  FORMAT 'csv',
  DELIMITER ';',
  HEADER TRUE
);
