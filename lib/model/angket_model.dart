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
];