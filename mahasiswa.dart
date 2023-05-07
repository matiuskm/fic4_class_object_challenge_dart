/*
1. Buatlah sebuah class bernama Mahasiswa dengan atribut
nama, jurusan, dan angkatan.
2. Buatlah constructor default pada class Mahasiswa.
3. Buatlah constructor parameterized pada class Mahasiswa
dengan parameter nama, jurusan, dan angkatan.
4. Buatlah constructor named pada class Mahasiswa dengan
nama fromJson yang menerima parameter jsonString dan
mengembalikan objek Mahasiswa yang diinisialisasi
dengan nilai atribut dari jsonString.
*/
class Mahasiswa {
  String? nama;
  String? jurusan;
  String? angkatan;

  Mahasiswa() {
    print("Ini constructor defaultnya.");
  }

  Mahasiswa.namedConstructor(this.nama, this.jurusan, this.angkatan) {
    print("Ini constructor parameterized.");
  }

  Mahasiswa.fromJson(Map<String, String> json) {
    nama = json['nama'];
    jurusan = json['jurusan'];
    angkatan = json['angkatan'];
  }
}
