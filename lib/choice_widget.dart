import 'package:flutter/material.dart';

class PlayerChoiceWidget extends StatelessWidget {
  final String image;
  final String textPlayer;
  bool _opacity = false;

  PlayerChoiceWidget({
    Key key,
    @required this.image,
    @required this.textPlayer
  }) : super(key:key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .45,
      decoration: BoxDecoration(color: Colors.amber),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              // color: Colors.brown,
              height: size.height * .28,
              child: Center(
                  child: image != null ?
                    Image.asset(
                      image,
                      width: 100
                    ) :
                    Container()
            )),
          Container(
            height: size.height * .07,
            width: size.width * .45,
            color: Colors.black54,
            alignment: Alignment.center,
            child: Text(
              textPlayer,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
