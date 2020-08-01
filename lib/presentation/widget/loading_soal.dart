import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';


class LoadingOverlay extends StatefulWidget {
  final String asset;
  final String animate;
  LoadingOverlay({@required this.asset,@required this.animate});

  @override
  State<StatefulWidget> createState() => LoadingOverlayState();
}

class LoadingOverlayState extends State<LoadingOverlay>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 450));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticInOut);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Container(
            decoration: ShapeDecoration(
                color: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: FlareActor(
              widget.asset,
              animation: widget.animate,
            ),
          ),
        ),
      ),
    );
  }
}