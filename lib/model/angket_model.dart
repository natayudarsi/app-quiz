class Angket{
  final String nomor;
  final String soal;
  final String jawabanA;
  final String jawabanB;
  final String jawabanC;
  final String jawabanBenar;

  const Angket({
    this.nomor,
    this.soal,
    this.jawabanA,
    this.jawabanB,
    this.jawabanC,
    this.jawabanBenar
  });
}

List<Angket> angkets =[
  const Angket(
    nomor: '1',
    soal : 'Saya lebih suka belajar dengan cara',
    jawabanA : 'Melihat',
    jawabanB : 'Mendengar',
    jawabanC : 'Praktik'
  ),
  const Angket(
    nomor: '2',
    soal : 'Ketika saya belajar sendirian, biasanya saya',
    jawabanA : 'Membuat catatan / rangkuman',
    jawabanB : 'Membacanya dengan suara keras',
    jawabanC : 'Mempraktekkannya'
  ),
  const Angket(
    nomor: '3',
    soal : 'Saya menyukai guru yang mengajar dengan cara',
    jawabanA : 'Menuliskan inti materi dan menggambarkannya di papan tulis',
    jawabanB : 'Berceramah',
    jawabanC : 'Langsung melakukan uji coba'
  ),
  const Angket(
    nomor: '4',
    soal : 'Ketika waktu luang biasanya saya',
    jawabanA : 'Membaca buku',
    jawabanB : 'Mendengarkan music',
    jawabanC : 'Bermain / olahraga'
  ),
  const Angket(
    nomor: '5',
    soal : 'Ketika merangkai sesuatu, cara yang saya gunakan adalah',
    jawabanA : 'Membaca petunjuk',
    jawabanB : 'Meminta orang lain mengatakan caranya pada saya',
    jawabanC : 'Langsung memulai mengerjakannya'
  ),
  const Angket(
    nomor: '6',
    soal : 'Saya sulit konsentrasi ketika',
    jawabanA : 'Kondisi ruangan berantakan / tidak rapi',
    jawabanB : 'Ada suara keributan',
    jawabanC : 'Gerakan-gerakan yang ada di sekitar'
  ),
  const Angket(
    nomor: '7',
    soal : 'Kata-kata khas yang sering saya gunakan adalah',
    jawabanA : 'Menurut pandangan saya',
    jawabanB : 'Aku mendengar apa yang kau katakan',
    jawabanC : 'Saya merasa sepertinya anda '
  ),
  const Angket(
    nomor: '8',
    soal : 'Ketika saya berbicara, kecepatan berbicara saya yaitu',
    jawabanA : 'Cepat',
    jawabanB : 'Sedang',
    jawabanC : 'Lebih Lambat'
  ),
  const Angket(
    nomor: '9',
    soal : 'Cara saya menilai sesuatu yaitu dengan berkata',
    jawabanA : 'Itu kelihatannya baik untukku',
    jawabanB : 'Itu kedengarannya baik untukku',
    jawabanC : 'Itu rasanya baik bagiku'
  ),
  const Angket(
    nomor: '10',
    soal : 'Ketika saya marah, yang saya lakukan adalah ',
    jawabanA : 'Diam saja',
    jawabanB : 'Memaki-maki dengan kata-kata',
    jawabanC : 'Membanting barang / memukul'
  ),
  const Angket(
    nomor: '11',
    soal : 'Hobi saya yaitu',
    jawabanA : 'Menulis, melukis.',
    jawabanB : 'Mendengarkan music',
    jawabanC : 'Bermain alat musik, bela diri, menari, olahraga'
  ),
  const Angket(
    nomor: '12',
    soal : 'Saya kesulitan menangkap pelajaran di kelas ketika',
    jawabanA : 'Tidak bisa melihat guru menjelaskan',
    jawabanB : 'Kondisi ruangan kelas bising',
    jawabanC : 'Pelajaran disampaikan secara auditori / visual bukan praktik'
  ),
  const Angket(
    nomor: '13',
    soal : 'Saya mudah menghafal dengan cara',
    jawabanA : 'Menghayal / membayangkan',
    jawabanB : 'Mendengarkan rekaman',
    jawabanC : 'Berjalan kesana-kesini'
  ),
  const Angket(
    nomor: '14',
    soal : 'Saya mudah menjelaskan sesuatu dengan cara',
    jawabanA : 'Menjelaskan dengan menggambarkannya di buku',
    jawabanB : 'Menjelaskan secara lisan',
    jawabanC : 'Menjelaskan dengan mempraktekkan '
  ),
  const Angket(
    nomor: '15',
    soal : 'Hal yang mudah saya ingat dari seseorang adalah',
    jawabanA : 'Wajahnya',
    jawabanB : 'Suaranya',
    jawabanC : 'Gerakan tubuhnya '
  ),
];