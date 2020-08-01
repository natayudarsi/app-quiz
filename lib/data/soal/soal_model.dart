import 'package:app_quiz/data/soal/jawaban_model.dart';
import 'package:meta/meta.dart';
import 'package:app_quiz/domain/soal/soal_entity.dart';

class Soal extends SoalEntity {
  Soal({
    @required String nomor,
    @required String soal,
    @required Answer opsiJawaban
  }) : super(
        nomor: nomor,
        soal: soal,
        opsiJawaban: opsiJawaban
  );
}