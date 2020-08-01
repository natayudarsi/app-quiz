
import 'package:app_quiz/common/config/screen_config.dart';
import 'package:app_quiz/common/routes/routes.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
       body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Container(
             height: size.height * .4,
             color: Colors.lightGreen,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:size.height * .15),
            height:size.height * .3,
            child: FlareActor(
              "assets/images/RobotStudy.flr",
              animation: "forward",
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:size.height * .1),
            alignment: Alignment.center,
            height: ScreenConfig.actualHeight,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Identifikasi\n',
                style: TextStyle(color: Colors.white,fontSize: 30,),
                children: <TextSpan>[
                  TextSpan(
                    text:'Gaya Belajar',
                    style: TextStyle(color:Colors.white, fontSize: 40)
                  )
                ]
              )
            )
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            alignment: Alignment.bottomCenter,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                RaisedButton(
                  color: Colors.indigo,
                  onPressed: (){
                    Navigator.of(context).pushNamed(Routes.rpsScreen);
                  },
                  child: Text('Mulai', style: TextStyle(),),
                ),
                RaisedButton(
                  onPressed: (){
                    SystemNavigator.pop();
                  },
                  child: Text('Keluar'),
                   
                )
              ],
            ),
          ),
        ],
      )
    );
  }

}