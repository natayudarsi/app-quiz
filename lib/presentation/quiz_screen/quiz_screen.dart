import 'package:app_quiz/data/data-angket.dart';
import 'package:app_quiz/model/angket_model.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {

  String _answer;

  

  @override
  void initState() {
    super.initState();
  }

  @override 
  void dispose() {
    super.dispose();
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
                  Text('Soal No '+angkets[1].nomor),
                  Text('8-15',style: TextStyle(backgroundColor: Colors.amber),),
                   Text(angkets[1].soal, textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 28, ),),
                ],
              )
            )),
        AnswerWidget(
          choice: 'A',
          answer: angkets[1].jawabanA,
          press: () {
            setState(() {
              _answer = 'a';
            });
          },
          isActive: _answer == 'a',
        ),
        AnswerWidget(
          choice: 'B',
          answer: angkets[1].jawabanB,
          press: () {
            setState(() {
              _answer = 'b';
            });
          },
          isActive: _answer =='b',
        ),
        AnswerWidget(
          choice: 'C',
          answer: angkets[1].jawabanC,
          press: () {
            setState(() {
              _answer = 'c';
            });
          },
          isActive: _answer == 'c',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              color: Colors.blueAccent,
              height: size.width * .1,
              width: size.width * .3,
              child: Text('Previous',),
            ),
            Container(
              color: Colors.red,
              height: 50,
              width: size.width *.3,
            )
          ],
        )
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