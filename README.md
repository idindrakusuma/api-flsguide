# API for FLS Guide

API (Application Program Interface) for FLS Guide adalah sebuah API yang digunakan untuk transaksi informasi aplikasi FLS Guide.

## Spesifikasi
- Codeigniter 3.1.4
- REST Server Library by [chriskacerguis](https://github.com/chriskacerguis/codeigniter-restserver)
- Butuh PHP 5.4
- Database MySQL

## Cara Pemanggilan
### Mendapatkan informasi user
- `yourserver.com/main/users` untuk mendapatkan seluruh daftar users
- `yourserver.com/main/users/$id` untuk mendapatkan user dengan id tertentu

### Informasi Pesan
- `yourserver.com/pesan/info` untuk mendapatkan seluruh daftar informasi
- `yourserver.com/pesan/info/$id` untuk mendapatkan informasi tertentu

### Informasi Agenda
- `yourserver.com/agenda/program` untuk mendapatkan seluruh daftar kegiatan acara
- `yourserver.com/agenda/program/$id` untuk mendapatkan kegiatan acara tertentu


## Author
- [Indra Kusuma](https://github.com/idindraksuuma)
