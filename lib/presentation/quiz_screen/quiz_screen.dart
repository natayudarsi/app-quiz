import 'package:app_quiz/data/data-angket.dart';
import 'package:app_quiz/model/angket_model.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {

  String _answer;
  int _indexSoalKe =0;
  var finalAnswer = [];
  int a=0;
  int b=0;
  int c=0;

  @override
  void initState() {
    super.initState();
  }

  @override 
  void dispose() {
    super.dispose();
  }

  void _showDialog() {
    showDialog( 
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text("Hasil"),
          content: new Text("A = $a, B = $b, C = $c"),
          actions: <Widget>[
            new FlatButton(
              child: Text("kembali ke menu awal"),
              onPressed: () { 
                Navigator.of(context).pop();
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
      children: <Widget>[
        ClipPath(
            clipper: MyClipper(),
            child: Container(
              height: size.height * .50,
              padding: EdgeInsets.symmetric(
                horizontal: size.width * .1
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Color(0xff3383CD), Color(0xFF11249F)])),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(size.height * .04),
                    height : size.height * .1,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text('Soal No '+angkets[_indexSoalKe].nomor,style: TextStyle(fontSize:20, color: Colors.white),),
                        Text('8-15',style: TextStyle(backgroundColor: Colors.amber, fontSize: 16),)
                      ],
                    )
                  ),
                   Text(angkets[_indexSoalKe].soal, textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 26, ),),
                ],
              )
            )),
        AnswerWidget(
          choice: 'A',
          answer: angkets[_indexSoalKe].jawabanA,
          press: () {
            setState(() {
              _answer = 'a';
            });
          },
          isActive: _answer == 'a',
        ),
        AnswerWidget(
          choice: 'B',
          answer: angkets[_indexSoalKe].jawabanB,
          press: () {
            setState(() {
              _answer = 'b';
            });
          },
          isActive: _answer =='b',
        ),
        AnswerWidget(
          choice: 'C',
          answer: angkets[_indexSoalKe].jawabanC,
          press: () {
            setState(() {
              _answer = 'c';
            });
          },
          isActive: _answer == 'c',
        ),
        Container(
          margin: EdgeInsets.only(top:size.height * .03),
          child:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            // GestureDetector(
            //   onTap: (){
            //     setState(() {                  
            //       // finalAnswer[_indexSoalKe] = _answer;
            //       finalAnswer.add("a");
            //       print(finalAnswer);
            //       _indexSoalKe = _indexSoalKe -1;
            //       _answer = null;
            //     });
            //   },
            //   child: Container(
            //     color: Colors.blueAccent,
            //     height: size.width * .1,
            //     width: size.width * .3,
            //     child: Center(child:Text('Previous',)),
            // )
            // ),
            GestureDetector(
              onTap: (){
                print(_indexSoalKe);
                _indexSoalKe == 14 ?
                  _showDialog()
                :
                setState(() {
                
                    finalAnswer.add(_answer);
                    print(finalAnswer);
                    _answer == "a" ? a = a+1 : _answer == "b" ? b= b+1 : c= c+1;
                    print("a = $a, b= $b, c= $c");
                    _indexSoalKe = _indexSoalKe +1;
                    _answer = null;
                });
              },
              child: Container(
                color: Colors.red,
                height: size.width * .1,
                width: size.width *.3,
                child: Center(child:Text('Next',)),
            ))
          ],
        ))
      ],
    ));
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class AnswerWidget extends StatelessWidget {
  final String question;
  final String answer;
  final Function press;
  final bool isActive;
  final String choice;

  const AnswerWidget({
    Key key,
    this.press,
    this.question,
    this.answer,
    this.choice,
    this.isActive = false,
  }) : super(key:key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return 
    GestureDetector(
      onTap: press,
      child: Container(
          height: size.height * .08,
          margin: EdgeInsets.symmetric(
            horizontal: size.width * .1
          ).copyWith(bottom : size.height * .02),
          padding: EdgeInsets.symmetric(
            horizontal: size.width *.05
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(size.width * .1),
            color: isActive ? Colors.blueAccent : Colors.grey[400]
          ),
          child: Row(
            children: <Widget>[
              Text('$choice.', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
              SizedBox(width: size.width * .03,),
              Container(width: size.width * .62,child:Text(answer, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),)),
            ],
          ),
        ),
    );
  }

}