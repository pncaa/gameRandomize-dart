
# 🎯 Program Tebak Angka 1–10

## 🧑‍💻 Identitas

* **Nama:** Panca Aziz Saputra
* **NIM:** H1D023033
* **Shift Awal:** H
* **Shift Akhir:** E

---

## 📘 Deskripsi Program

Program ini merupakan permainan sederhana untuk menebak angka antara 1 hingga 10.
User akan memasukkan angka, kemudian sistem akan menghasilkan angka acak, dan hasil tebakan akan dibandingkan untuk menentukan apakah tebakan lebih besar, lebih kecil, atau sama.

---

## ⚙️ Fungsi-Fungsi Utama

### 1. `InputInt()`

Digunakan untuk menerima input angka dari user dalam rentang **1–10**.

* Jika user memasukkan angka **10**, akan muncul **notifikasi tersembunyi (easter egg)** sebagai kejutan.

### 2. `randomizeAngka()`

Berfungsi untuk menghasilkan **angka acak (random)** antara **1–10** menggunakan generator angka acak bawaan program.

### 3. `perbandingan()`

Melakukan **perbandingan** antara angka input dari user dan angka acak dari sistem.
Kondisi yang diperiksa:

* Jika `inputan > random` → tampil pesan bahwa tebakan terlalu besar.
* Jika `inputan < random` → tampil pesan bahwa tebakan terlalu kecil.
* Jika `inputan == random` → tampil pesan bahwa tebakan benar.

---

## 🧩 Cara Kerja Program

1. **User menginput angka** melalui fungsi `InputInt()`.
2. **Program menghasilkan angka acak** dengan `randomizeAngka()`.
3. Kedua angka (input dan acak) dikirim ke fungsi `perbandingan()`.
4. Di dalam `perbandingan()`, hasil tebakan ditentukan berdasarkan kondisi `if-else`.
5. Fungsi `main()` menjalankan seluruh proses di atas secara berurutan.

---

## 📝 Catatan

* Program ini dirancang untuk latihan logika pemrograman dasar (fungsi, kondisi, dan input/output).
* Dapat dikembangkan lebih lanjut dengan sistem skor, jumlah percobaan, atau level kesulitan.

---
