import 'package:intl/intl.dart';

import 'staf.dart';

enum Jabatan {
  programmer("Programmer", 5000000),
  cto("CTO", 10000000),
  ceo("CEO", 20000000);

  const Jabatan(this.name, this.tunjangan);
  final String name;
  final int tunjangan;
}

class Karyawan extends Staf {
  Jabatan jabatan;
  Karyawan(super.npp, super.nama, {required this.jabatan});

  @override
  void absenMasuk(DateTime jamMasuk) {
    final dateFormatter = DateFormat('yMMMMEEEEd');
    if (jamMasuk.hour > 8) {
      print("$nama pada ${dateFormatter.format(jamMasuk)} datang Terlambat");
    } else {
      print("$nama pada ${dateFormatter.format(jamMasuk)} datang Tepat Waktu");
    }
  }

  @override
  int get tunjangan => jabatan.tunjangan;

  @override
  String get deskripsi =>
      "${DateFormat("yMMMMEEEEd").format(DateTime.now())} ${jabatan.name}";
}
