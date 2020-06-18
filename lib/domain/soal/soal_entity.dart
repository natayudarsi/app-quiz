import 'package:app_quiz/domain/soal/jawaban_entity.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

class SoalEntity extends Equatable {
  final String nomor;
  final String soal;
  final AnswerEntity opsiJawaban;

  SoalEntity({
    @required this.nomor,
    @required this.opsiJawaban,
    @required this.soal
  }) : super();

  @override
  List<Object> get props => [
    nomor,
    soal,
    opsiJawaban
  ];

}