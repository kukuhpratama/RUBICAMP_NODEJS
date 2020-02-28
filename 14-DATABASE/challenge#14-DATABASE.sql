CREATE TABLE mahasiswa (
    nim VARCHAR(30) NOT NULL, 
    nama VARCHAR(50) NOT NULL, 
    alamat VARCHAR(50) NOT NULL, 
    id_jurusan INT NOT NULL, 
    PRIMARY KEY(nim), 
    FOREIGN KEY (id_jurusan) REFERENCES jurusan (id_jurusan)
);

INSERT INTO mahasiswa(nim, nama, alamat, id_jurusan) VALUES (14523161,'Kukuh Prihandoko Pratama','Jl. Pangeran Antasari Rt 50 No 41 Balikpapan','J001');
INSERT INTO mahasiswa(nim, nama, alamat, id_jurusan) VALUES (14523162,'Hariadi Adhitama','Jl. Kaliurang Km 13 sleman','J001');
INSERT INTO mahasiswa(nim, nama, alamat, id_jurusan) VALUES (14523163,'Winda Kurnia','Jl. Magelang Rt 10 No 41','J001');

CREATE TABLE jurusan(
    id_jurusan VARCHAR(30) NOT NULL, 
    nama_jurusan VARCHAR(30) NOT NULL, 
    PRIMARY KEY(id_jurusan)
    
);

INSERT INTO jurusan(id_jurusan, nama_jurusan) VALUES ('J001', 'Teknik Informatika');

CREATE TABLE matakuliah(
    id_matakuliah VARCHAR(30) NOT NULL,
    nama_matakuliah vahar(50) NOT NULL,
    sks VARCHAR(5) NOT NULL, 
    PRIMARY KEY(id_matakuliah)
);

INSERT INTO matakuliah(id_matakuliah, nama_matakuliah, sks) VALUES ('M001', 'Basisdata', 3);
INSERT INTO matakuliah(id_matakuliah, nama_matakuliah, sks) VALUES ('M002', 'Strukturdata', 3);
INSERT INTO matakuliah(id_matakuliah, nama_matakuliah, sks) VALUES ('M003', 'Kalkulus', 4);
INSERT INTO matakuliah(id_matakuliah, nama_matakuliah, sks) VALUES ('M004', 'Jarkom', 3);



CREATE TABLE dosen(
    nip VARCHAR(30) NOT NULL, 
    nama VARCHAR(50) NOT NULL, 
    PRIMARY KEY(nip)
);

INSERT INTO dosen(nip, nama) VALUES (2019001,'Yudi Prayudi');
INSERT INTO dosen(nip, nama) VALUES (2019002,'Erika icha');
INSERT INTO dosen(nip, nama) VALUES (2019003,'Fairuz Rahma');

CREATE TABLE kontrak(
    id_kontrak INTEGER PRIMARY KEY autoincrement, 
    nim VARCHAR(30) NOT NULL, 
    nip VARCHAR(30) NOT NULL, 
    id_matakuliah VARCHAR(30) NOT NULL, 
    nilai VARCHAR(10) NULL, 
    FOREIGN KEY(nim) REFERENCES mahasiswa (nim), 
    FOREIGN KEY(nip) REFERENCES dosen(nip), 
    FOREIGN KEY(id_matakuliah) REFERENCES matakuliah(id_matakuliah)
    );

INSERT INTO kontrak(nim,nip,id_matakuliah,nilai) VALUES (14523161, 2019001, 'M001', 'A');
INSERT INTO kontrak(nim,nip,id_matakuliah,nilai) VALUES (14523161, 2019002, 'M002', 'A');
INSERT INTO kontrak(nim,nip,id_matakuliah,nilai) VALUES (14523161, 2019003, 'M003', 'B');
INSERT INTO kontrak(nim,nip,id_matakuliah,nilai) VALUES (14523161, 2019003, 'M004', 'A');

INSERT INTO kontrak(nim,nip,id_matakuliah,nilai) VALUES (14523162, 2019001, 'M001', 'A');
INSERT INTO kontrak(nim,nip,id_matakuliah,nilai) VALUES (14523162, 2019002, 'M002', 'B');
INSERT INTO kontrak(nim,nip,id_matakuliah,nilai) VALUES (14523162, 2019003, 'M003', 'A');



INSERT INTO kontrak(nim,nip,id_matakuliah,nilai) VALUES (14523163, 2019001, 'M001', 'A');
INSERT INTO kontrak(nim,nip,id_matakuliah,nilai) VALUES (14523163, 2019002, 'M002', 'A');
INSERT INTO kontrak(nim,nip,id_matakuliah,nilai) VALUES (14523163, 2019003, 'M003', 'A');
INSERT INTO kontrak(nim,nip,id_matakuliah,nilai) VALUES (14523163, 2019003, 'M004', 'B');
