import 'kucing.dart';
import 'nasabah.dart';

void main() {
  Kucing kucing1 = Kucing();
  kucing1.nama = "Meong";
  kucing1.umur = 3;
  print("Nama kucing: ${kucing1.nama}");
  print("Umur kucing: ${kucing1.umur}");

  Nasabah nasabah1 = Nasabah("A", "Jl Sore");
  Nasabah nasabah2 = Nasabah("B", "Jl Santai");

  nasabah1.simpan(10000000);
  nasabah2.ambil(100000);
  nasabah2.simpan(100000);
  nasabah1.ambil(50000);

  print(
      "Nasabah ${nasabah1.nama} saldo terakhirnya adalah Rp ${nasabah1.saldo}");
  print(
      "Nasabah ${nasabah2.nama} saldo terakhirnya adalah Rp ${nasabah2.saldo}");
}
