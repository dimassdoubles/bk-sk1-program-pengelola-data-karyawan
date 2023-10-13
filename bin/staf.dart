abstract class Staf {
  static const umr = 2900000;

  String npp;
  String nama;
  String? alamat;
  int thnMasuk;
  int _gaji = umr;

  Staf(this.npp, this.nama, {this.thnMasuk = 2015});

  @override
  String toString() {
    return '''
npp         : $npp
nama        : $nama
alamat      : ${alamat ?? "-"}
tahun masuk : $thnMasuk
    ''';
  }

  set gaji(int gaji) {
    if (gaji < umr) {
      _gaji = umr;
      print('gaji tidak boleh di bawah UMR');
    } else if (((2023 - thnMasuk) < 5) && (gaji != umr)) {
      _gaji = umr;
      print('Gaji pegawai baru harus sesuai UMR');
    } else {
      _gaji = gaji;
    }
  }

  int get gaji {
    return _gaji + tunjangan;
  }

  int get tunjangan;
  String get deskripsi;
  void absenMasuk(DateTime jamMasuk);
}
