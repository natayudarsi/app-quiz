import 'package:flutter/material.dart';

class RpsScreen extends StatefulWidget {
  @override
  _RpsScreenState createState() => _RpsScreenState();
}

class _RpsScreenState extends State<RpsScreen> {


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
        // backgroundColor: Colors.blue,
        body: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(color: Colors.lightBlue),
          child: GestureDetector(
            child: Container(child: Text('a')),
          ),
        ),
        Opacity(
          opacity: 1,
          child: Container(
              decoration: BoxDecoration(
                color: Colors.black87,
              ),
              child: Center(
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
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 100,
                      width: 100,
                      child: Image.asset('assets/images/scissor.png'),
                    )
                  ],
                ),
              )),
        )
      ],
    ));
  }

  Widget _isNotChose() {
    return Container(
        decoration: BoxDecoration(
          color: Colors.black87,
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(3),
                height: 50,
                width: 50,
                child: Image.asset('assets/images/rock.png'),
              ),
              Container(
                margin: EdgeInsets.all(3),
                height: 50,
                width: 50,
                child: Image.asset('assets/images/paper.png'),
              ),
              Container(
                margin: EdgeInsets.all(3),
                height: 50,
                width: 50,
                child: Image.asset('assets/images/scissor.png'),
              )
            ],
          ),
        ));
  }
}
