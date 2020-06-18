import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Center(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            // margin: EdgeInsets.all(10),
            color: Colors.red,
            height: size.height * .47,
            child: Image.asset('assets/images/paper.png'),
          ),
          Container(
            color: Colors.yellow,
            height: size.height * .06,
          ),
          Container(
            color: Colors.lightBlue,
            height: size.height * .47,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  width: size.width * .2,
                  height: size.height * .5,
                  child: Text('data'),
                  // decoration: BoxDecoration(
                  //   border: Border(right: BorderSide())
                  // ),
                ),
                Container(
                  width: size.width * .8,
                  height: 200,
                  child: Image.asset('assets/images/rock.png',),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
