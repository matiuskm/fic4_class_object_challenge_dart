/*
1. Buatlah sebuah class bernama Nasabah dengan atribut nama, alamat, dan saldo.
2. Buatlah constructor parameterized pada class Nasabah dengan parameter nama
dan alamat, dan memberikan nilai awal saldo adalah 0.
3. Buatlah method simpan pada class Nasabah yang menerima parameter jumlah dan
menambahkan jumlah ke saldo.
4. Buatlah method ambil pada class Nasabah yang menerima parameter jumlah dan
mengurangi jumlah dari saldo.
5. Buatlah objek nasabah1 dan nasabah2 dari class Nasabah dengan nilai atribut
masing-masing.
6. Lakukan beberapa transaksi dengan method simpan dan ambil pada objek
nasabah1 dan nasabah2.
7. Tampilkan nilai saldo terakhir dari objek nasabah1 dan nasabah2 menggunakan
method print.
*/
class Nasabah {
  String? nama;
  String? alamat;
  double? saldo;

  Nasabah(this.nama, this.alamat) {
    saldo = saldo ?? 0;
    print(
        "Nasabah baru dengan nama $nama beralamat di ${alamat} dengan saldo awal Rp ${saldo}");
  }

  void simpan(double jumlah) {
    saldo = (saldo ?? 0) + jumlah;
    print(
        "Setoran sejumlah Rp ${jumlah} berhasil, saldo Anda saat ini Rp ${saldo}");
  }

  void ambil(double jumlah) {
    if (((saldo ?? 0) - jumlah) < 0) {
      print("Saldo Anda tidak mencukupi.");
    } else {
      saldo = saldo! - jumlah;
      print(
          "Penarikan sejumlah Rp ${jumlah} berhasil, saldo Anda saat ini Rp ${saldo}");
    }
  }
}
