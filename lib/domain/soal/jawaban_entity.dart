import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

class AnswerEntity extends Equatable {
  final String nomorSoal;
  final String opsiJawaban;
  final String isiJawaban;

  AnswerEntity({
    @required this.nomorSoal,
    @required this.opsiJawaban,
    @required this.isiJawaban
  });

  @override
  List<Object> get props => [
    nomorSoal,
    opsiJawaban,
    isiJawaban
  ];

}