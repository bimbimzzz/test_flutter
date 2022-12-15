import 'dart:io';

void main() {
  print('========Soal No 1========');
  /*
  Buatlah sebuah program menggunakan. Hitunglah biaya sewa kost, inputan berupa angka yang menandakan banyaknya hari dengan harga sewa kost sebagai berikut : 
    - 1 hari : 10.000 
    - 1 minggu (7 hari) : 50.000 
    - 1 bulan (30 hari) : 180.000 

      Biaya yang dihitung dari yang terbesar terdahulu.
        Contoh :
      Bila sewa kost 33 hari maka biaya sewanya 210.000 dan sewa 15 hari biayanya 110.000.
    -	inputan min 1 max 365
    -	inputan berupa angka
  */

  print("Berapa banyak hari kost akan disewa?");
  int hari = int.parse(stdin.readLineSync()!);

  // Menghitung biaya sewa kost
  int biaya = 0;
  if (hari >= 30) {
    biaya += 180000 * (hari ~/ 30);
    hari %= 30;
  }
  if (hari >= 7) {
    biaya += 50000 * (hari ~/ 7);
    hari %= 7;
  }
  biaya += 10000 * hari;

  // Menampilkan hasilnya
  print("Biaya sewa kost adalah: $biaya");

  // Input nominal
  int nominal = int.parse(stdin.readLineSync()!);

  // Cek apakah nominal minimal 100000
  if (nominal < 100000) {
    print("Nominal tidak boleh kurang dari 100000");
    return;
  }

  print('========Soal No 2========');
  /*
  Buatlah sebuah input perhitungan bunga sederhana mengguakan 
    1.	Bulan ke 1 : Rp. 100500
    2.	Bulan ke 2 : Rp. 101010
    3.	Bulan ke 3 : Rp. 10.1530.2
    4.	Bulan ke 4 : Rp. 102060.804
    5.	Bulan ke 5 : Rp .102602.02008000002
    6.	Bulan ke 6 : Rp. 103154.06048160001

  Dengan catatan 
  •	Input harus angka
  •	Input harus minimal 100000
  •	Jika dibawah 100000 berikan pesan peringatan
  •	Jika input 100000 – 500000 maka mendapatakan tambahan bunga  2% perbulan dan potongan admin perbulan 1500
  •	Jika input 500000 – 10 000000 maka mendapatakan tambahan bunga 3% perbulan dan potongan admin perbulan 2000
  •	Jika input 10000000 – 50000000 maka bunga 4% perbulan dan potongan admin perbulan 2500
  •	Jika input lebih dari 50000000 maka bunga 5% perbulan dan potongan admin perbulan 3000
  •	Perhitungan bulan sampai bulan ke 6

  */

  // Tentukan persentase bunga dan potongan admin per bulan
  double bunga_per_bulan = 0;
  int potongan_admin = 0;

  if (nominal >= 100000 && nominal <= 500000) {
    bunga_per_bulan = 0.02;
    potongan_admin = 1500;
  } else if (nominal > 500000 && nominal <= 10000000) {
    bunga_per_bulan = 0.03;
    potongan_admin = 2000;
  } else if (nominal > 10000000 && nominal <= 50000000) {
    bunga_per_bulan = 0.04;
    potongan_admin = 2500;
  } else {
    bunga_per_bulan = 0.05;
    potongan_admin = 3000;
  }

  // Hitung bunga untuk bulan ke-1 sampai bulan ke-6
  for (int i = 1; i <= 6; i++) {
    // Hitung bunga
    int bunga = ((nominal * bunga_per_bulan) - potongan_admin) as int;

    // Tambahkan bunga ke nominal
    nominal += bunga;

    // Tampilkan hasil
    print("Bulan ke-$i: Rp. $nominal");
  }
}
