import 'karyawan.dart';

void main(List<String> arguments) {
  final karyawans = [
    Karyawan("001", "Dimas Saputro", jabatan: Jabatan.programmer),
    Karyawan("002", "David Julius", jabatan: Jabatan.ceo),
    Karyawan("003", "Citrahadi", jabatan: Jabatan.cto),
  ];

  for (final karyawan in karyawans) {
    print(karyawan);
    print(karyawan.deskripsi);
  }
}
