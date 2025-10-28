import 'dart:math';
import 'dart:io';

// Fungsi input angka
int inputInt(String pesan) {
  stdout.write(pesan);
  String? teks = stdin.readLineSync();

  // Cek apakah teks valid untuk diubah ke int
  if (teks == null || int.tryParse(teks) == null) {
    print('Input tidak valid! Masukkan angka bulat.');
    return inputInt(pesan); // ulang input
  }

  int angka = int.parse(teks);

  // Cek batas angka
  if (angka < 0 || angka > 10) {
    print('Angka harus antara 0 sampai 10!');
    return inputInt(pesan);
  }

  // Kondisi khusus jika angka == 10
  if (angka == 10) {
    print('CUPU! MASIH MAU MILIH ANGKA 10??');
    stdout.write('Yakin (ya/tidak)? ');
    String? konfirmasi = stdin.readLineSync();

    if (konfirmasi == null) {
      return inputInt(pesan);
    }

    if (konfirmasi.toLowerCase() == 'ya') {
      print('Baik, angka tetap 10.');
      return angka;
    } else {
      print('Silakan pilih angka lain.');
      return inputInt(pesan);
    }
  }

  // Kalau semua normal
  return angka;
}

// Fungsi randomize angka
int randomizeAngka() {
  var random = Random(DateTime.now().millisecondsSinceEpoch);
  return 1 + random.nextInt(10); 
}

// Fungsi pembanding
void perbandingan(int inputan, int random) {
  print('\n=== HASIL ===');
  print('Angka kamu: $inputan');
  print('Angka komputer: $random');

  if (inputan > random) {
    print('YEY! ANGKA KAMU LEBIH BESAR!! 🎉');
  } else if (inputan == random) {
    print('BOLEHLAH... KITA SERI 😎');
  } else {
    print('CUPU 😜 ANGKA KAMU LEBIH KECIL!');
  }
}

// Fungsi main
void main() {
  print('=== GAME: YANG LEBIH KECIL KALAH ===\n');

  int angkaKamu = inputInt('Masukkan angka kamu (0–10): ');
  int angkaKomputer = randomizeAngka();

  perbandingan(angkaKamu, angkaKomputer);
}
