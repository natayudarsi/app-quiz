import 'package:app_quiz/data/soal/jawaban_model.dart';
import 'package:app_quiz/data/soal/soal_model.dart';

Soal angket = Soal(
  nomor: '1', 
  soal: 'soal no 1', 
  opsiJawaban: jawabanNo1
  );

Answer jawabanNo1 = Answer(
  nomorSoal: '1', 
  opsiJawaban: 'a', 
  isiJawaban: 'ini benar'
  );

List soal = [
  'Saya lebih suka belajar dengan cara',
  'Ketika saya belajar sendirian, biasanya saya',
  'Saya menyukai guru yang mengajar dengan cara',
  'Ketika waktu luang biasanya saya',
  'Ketika merangkai sesuatu, cara yang saya gunakan adalah',
  'Saya sulit konsentrasi ketika',
  'Kata-kata khas yang sering saya gunakan adalah',
  'Ketika saya berbicara, kecepatan berbicara saya yaitu',
  'Cara saya menilai sesuatu yaitu dengan berkata',
  'Ketika saya marah, yang saya lakukan adalah',
  'Hobi saya yaitu',
  'Saya kesulitan menangkap pelajaran di kelas ketika',
  'Saya mudah menghafal dengan cara',
  'Saya mudah menjelaskan sesuatu dengan cara',
  'Hal yang mudah saya ingat dari seseorang adalah'
];

List<Map<String,String>> jawaban = [
  {
    'a':'Melihat',
    'b':'Mendengar', 
    'c':'Praktik',
  },
  {
    'a' : 'Membuat catatan / rangkuman',
    'b' : 'Membacanya dengan suara keras',
    'c' : 'Mempraktekkannya'
  },
  {
    'a' : 'Menuliskan inti materi dan menggambarkannya di papan tulis',
    'b' : 'Berceramah',
    'c' : 'Langsung melakukan uji coba'
  },
  {
    'a' : 'Membaca buku',
    'b' : 'Mendengarkan musik',
    'c' : 'Bermain / olahraga'
  },
  {
    'a' : 'Membaca petunjuk',
    'b' : 'Meminta orang lain mengatakan caranya pada saya',
    'c' : 'Langsung memulai mengerjakannya'
  },
  {
    'a' : 'Kondisi ruangan berantakan / tidak rapi',
    'b' : 'Ada suara keributan',
    'c' : 'Gerakan-gerakan yang ada di sekitar'
  },
  {
    'a' : 'Menurut pandangan saya',
    'b' : 'Aku mendengar apa yang kau katakan',
    'c' : 'Saya merasa seperti anda'
  },
  {
    'a' : 'Cepat',
    'b' : 'Sedang',
    'c' : 'Lebih lambat'
  },
  {
    'a' : 'Itu kelihatannya baik untukku',
    'b' : 'Itu kedengarannya baik untukku',
    'c' : 'Itu rasanya baik untukku'
  },
  {
    'a' : 'Diam saja',
    'b' : 'Memaki-maki dengan kata-kata',
    'c' : 'Membanting barang / memukul'
  },
  {
    'a' : 'Menulis / melukis',
    'b' : 'Mendengarkan musik',
    'c' : 'Bermain alat musik, bela diri, menari, olahraga'
  },
  {
    'a' : 'Tidak bisa melihat guru menjelaskan',
    'b' : 'Kondisi ruang kelas bising',
    'c' : 'Pelajaran disampaikan secara auditori / visual bukan praktik'
  },
  {
    'a' : 'Menghayal / membayangkan',
    'b' : 'Mendengarkan rekaman',
    'c' : 'Berjalan kesana-kesini'
  },
  {
    'a' : 'Menjelaskan dengan menggambarkannya di buku',
    'b' : 'Menjelaskan secara lisan',
    'c' : 'Menjelaskan dengan mempraktekkan'
  },
  {
    'a' : 'Wajahnya',
    'b' : 'Suaranya',
    'c' : 'Gerakan tubuhnya'
  }
  ];
