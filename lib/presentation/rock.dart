import 'dart:math';

import 'package:app_quiz/choice_widget.dart';
import 'package:flutter/material.dart';

class ScreenGame extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<ScreenGame> {
  Random random = new Random();
  List images = ['assets/images/rock.png', 'assets/images/paper.png', 'assets/images/scissor.png', null];
  String image1;
  int image2 = 3;
  var a;

  @override
  void initState() {
    super.initState();
  }

  hasil(String image1, String image2) {
    String player = image1.substring(14);
    String computer = image2.substring(14);
    print(player);
    print(computer);
    if(player == computer){
      print('seri');
    } else if(player == 'rock.png' && computer == 'scissor.png' || player == 'scissor.png' && computer == 'paper.png' || player == 'paper.png' && computer == 'rock.png') {
      print('you win');
    } else {
      print('you lose');
    }
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text("Alert Dialog title"),
          content: new Text("Alert Dialog body"),
          actions: <Widget>[
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  image1 = null;
                image2 = 3;
                });
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
      backgroundColor: Colors.blue,
        body: Center(
          // child : Container(
          //    color : Color(0xff6495ED),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            height: size.height * .15,
            child: Text('You Win!',style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),)
          ),
          Container(
            height: size.height * .35,
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              PlayerChoiceWidget(image: image1, textPlayer: 'YOUR CHOICE'),
              PlayerChoiceWidget(image: images[image2], textPlayer: 'COMPUTER CHOICE')
            ],
          )),
          Container(
            padding: EdgeInsets.all(20),
            height: size.height * .20,
            color: Colors.green,
            // padding: EdgeInsets.all(10),
          ),
          Container(
            height: size.height * .20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  child: Image.asset('assets/images/rock.png'),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  child: Image.asset('assets/images/paper.png'),
                ),
                // Container(
                //   margin: EdgeInsets.all(10),
                //   height: 100,
                //   width: 100,
                //   child: Image.asset('assets/images/scissor.png'),
                // ),
                
                InkWell(
                  // focusColor: Colors.amber,
                  // highlightColor: Colors.amber,
                  // splashColor: Colors.amber,
                  // hoverColor: Colors.amber,
                  onTap: (){
                    a=1;
                    setState(() {
                      image1 = 'assets/images/paper.png';
                      image2 = random.nextInt(3);
                      hasil(image1, images[image2]);
                      _showDialog();
                    });
                    print(image2);
                    print(images[1]);
                  },
                  child: Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  child: Image.asset('assets/images/paper.png'),
                ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }

}
