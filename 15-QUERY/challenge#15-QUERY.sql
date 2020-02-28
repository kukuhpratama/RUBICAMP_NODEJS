1. select nama, nama_jurusan from mahasiswa, jurusan where mahasiswa.id_jurusan = jurusan.id_jurusan;
​
2. select * from mahasiswa  where umur < 20;
​
3. select nama, nilai from mahasiswa natural join kontrak where nilia <= 'B';
​
4. 
select mahasiswa.nim, mahasiswa.nama, sum(sks) 
from mahasiswa inner join kontrak on mahasiswa.nim = kontrak.nim 
inner join matakuliah on kontrak.id_matakuliah = matakuliah.id_matakuliah
group by  mahasiswa.nama
having sum(sks) >= 10;
​
5.
select mahasiswa.nim, mahasiswa.nama, nama_matakuliah
from mahasiswa inner join kontrak on mahasiswa.nim = kontrak.nim
inner join matakuliah on kontrak.id_matakuliah = matakuliah.id_matakuliah
where nama_matakuliah = 'data mining';
​
6.select dosen.nip, dosen.nama, count(mahasiswa.nama)
from dosen inner join kontrak on dosen.nip = kontrak.nip
inner join mahasiswa on kontrak.nim =  mahasiswa.nim
group by dosen.nama;
​
7. select * from mahasiswa order by umur desc;
​
8. 
select mahasiswa.nim, mahasiswa.nama, mahasiswa.alamat, mahasiswa.umur, dosen.nama, matakuliah.nama_matakuliah, kontrak.nilai,jurusan.nama_jurusan
from mahasiswa inner join kontrak on mahasiswa.nim = kontrak.nim
inner join dosen on kontrak.nip = dosen.nip
inner join matakuliah on kontrak.id_matakuliah = matakuliah.id_matakuliah
inner join jurusan on mahasiswa.id_jurusan = jurusan.id_jurusan
where kontrak.nilai between 'D' and 'E';