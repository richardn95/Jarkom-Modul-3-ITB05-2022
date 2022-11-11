# Jarkom-Modul-3-ITB05-2022
Kelompok ITB05

1. M.Fernando N.Sibarani (5027201015)
2. Richard Nicolas (5027201021)
3. Muhammad Ihsanul Afkar (5027201024)


# Daftar Isi
* [Topologi](#Topologi)
* [Soal 1](#soal-1) 
* [Soal 2](#soal-2) 
* [Soal 3](#soal-3) 
* [Soal 4](#soal-4) 
* [Soal 5](#soal-5) 
* [Soal 6](#soal-6) 
* [Soal 7](#soal-7) 
* [Soal 8](#soal-8) 
* [Kendala](#kendala)

# Topologi
![topologi](img/topologi.png)

# Soal-1
Loid bersama Franky berencana membuat peta tersebut dengan kriteria **WISE** sebagai DNS Server, **Westalis** sebagai DHCP Server, **Berlint** sebagai Proxy Server
## Penyelesaian Soal 1
# Soal-2
**Ostania** sebagai DHCP Relay. Loid dan Franky menyusun peta tersebut dengan hati-hati dan teliti.
## Penyelesaian Soal 2
# Soal-3
Ada beberapa kriteria yang ingin dibuat oleh Loid dan Franky, yaitu:
1. Semua client yang ada **HARUS** menggunakan konfigurasi IP dari DHCP Server.
2. Client yang melalui Switch1 mendapatkan range IP dari 10.47.1.50 - 10.47.1.88 dan 10.47.1.120 - 10.47.1.155
## Penyelesaian Soal 3
# Soal-4
3. Client yang melalui Switch3 mendapatkan range IP dari 10.47.3.10 - 10.47.3.30 dan 10.47.3.60 - 10.47.3.85
## Penyelesaian Soal 4
# Soal-5
4. Client mendapatkan DNS dari WISE dan client dapat terhubung dengan internet melalui DNS tersebut.
## Penyelesaian Soal 5
# Soal-6
5. Lama waktu DHCP server meminjamkan alamat IP kepada Client yang melalui Switch1 selama 5 menit sedangkan pada client yang melalui Switch3 selama 10 menit. Dengan waktu maksimal yang dialokasikan untuk peminjaman alamat IP selama 115 menit.
## Penyelesaian Soal 6
# Soal-7
Loid dan Franky berencana menjadikan **Eden** sebagai server untuk pertukaran informasi dengan **alamat IP yang tetap** dengan IP 10.47.3.13 
## Penyelesaian Soal 7
# Soal-8
**SSS, Garden, dan Eden** digunakan sebagai client **Proxy** agar pertukaran informasi dapat terjamin keamanannya, juga untuk mencegah kebocoran data.

Pada Proxy Server di **Berlint**, Loid berencana untuk mengatur bagaimana Client dapat mengakses internet. Artinya setiap client harus menggunakan Berlint sebagai HTTP & HTTPS proxy. Adapun kriteria pengaturannya adalah sebagai berikut:

1. Client hanya dapat mengakses internet diluar (selain) hari & jam kerja (senin-jumat 08.00 - 17.00) dan hari libur (dapat mengakses 24 jam penuh)
2. Adapun pada hari dan jam kerja sesuai nomor (1), client hanya dapat mengakses domain loid-work.com dan franky-work.com (IP tujuan domain dibebaskan)
3. Saat akses internet dibuka, client dilarang untuk mengakses web tanpa HTTPS. (Contoh web HTTP: http://example.com)
4. Agar menghemat penggunaan, akses internet dibatasi dengan kecepatan maksimum 128 Kbps pada setiap host (Kbps = kilobit per second; lakukan pengecekan pada tiap host, ketika 2 host akses internet pada saat bersamaan, **keduanya mendapatkan speed maksimal yaitu 128 Kbps**)
5. Setelah diterapkan, ternyata peraturan nomor (4) mengganggu produktifitas saat hari kerja, dengan demikian pembatasan kecepatan hanya diberlakukan untuk pengaksesan internet pada hari libur

Setelah proxy **Berlint** diatur oleh Loid, dia melakukan pengujian dan mendapatkan hasil sesuai tabel berikut.
| Aksi | Senin(10.00) | Senin(20.00) | Sabtu(10.00) |
| ---  | --- | --- | --- |
| Akses internet (HTTP) |X|X|X|
| Akses internet (HTTPS) |X|V|V|
|Akses loid-work.com dan franky-work.com|V|X|X|
|Speed limit (128Kbps)|tidak bisa akses|x (speed tidak dibatasi)|V|

X: tidak, V: iya

## Penyelesaian Soal 8
# kendala
Nomor 8