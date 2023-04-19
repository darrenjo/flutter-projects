import 'package:first_project/first_project.dart' as first_project;

void main(List<String> arguments) {
  // Variable
  // var namaDepan = "Darren";
  // var namaBelakang = "Ya";
  // print("$namaDepan $namaBelakang membeli barang seharga \$2");

  // Const & Final
  // const double phi = 3.14;
  // final double pha;
  // pha = 3.14;

  // Operator
  // 1. Artimatika (+, -, *, /, %, ++, --)
  // int angka = 2;
  // print(angka++); // Post increment
  // print(++angka); // Pre increment
  // print(angka--); // Post decrement
  // print(--angka); // Pre decrement

  // 2. Perbandingan (<, >, ==, <=, >=, !=)
  // 3. Assignment (=, -=. +=, *=. /=)
  // 4. Logika (||, &&)

  // Void function
  // salam("sore", "saya");

  // Return function
  // print(salam("sore", "saya"));

  // Return function dengan default value
  print(salam());
}

// Void function
// void salam(waktu, nama) {
//   print("Halo selamat $waktu, $nama");
// }

// Return function
// String salam(waktu, nama) {
//   return "Halo selamat $waktu, $nama";
// }

// Return function dengan default value
String salam([waktu = "malam", nama = "Andi"]) {
  return "Halo selamat $waktu, $nama";
}
