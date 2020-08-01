import 'package:meta/meta.dart';
import 'package:app_quiz/domain/soal/jawaban_entity.dart';

class Answer extends AnswerEntity {
  Answer({
    @required String nomorSoal,
    @required String opsiJawaban,
    @required String isiJawaban
  }) : super (
      nomorSoal: nomorSoal,
      opsiJawaban : opsiJawaban,
      isiJawaban : isiJawaban
  );

}