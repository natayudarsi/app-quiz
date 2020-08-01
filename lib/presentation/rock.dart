// import 'dart:math';

// import 'package:app_quiz/choice_widget.dart';
// import 'package:app_quiz/common/routes/routes.dart';
// import 'package:flutter/material.dart';

// class ScreenGame extends StatefulWidget {
//   @override
//   _ScreenState createState() => _ScreenState();
// }

// class _ScreenState extends State<ScreenGame> {
//   Random random = new Random();
//   List images = ['assets/images/rock.png', 'assets/images/paper.png', 'assets/images/scissor.png', null];
//   String image1;
//   int image2 = 3;
//   var a;
//   String pemenang;

//   int count = 0;

//   @override
//   void initState() {
//     super.initState();
//   }

//   autoWin(String player1){
//     if(player1 == 'rock.png'){
//       return 'scissor.png';
//     } else if(player1 == 'scissor.png'){
//       return 'paper.png';
//     } else if(player1 == 'paper.png'){
//       return 'rock.png';
//     }
//   }

//   hasil(String image1, String image2) {
//     String player = image1.substring(14);
//     String computer = image2.substring(14);
//     print('count $count');
//     if(count ==2){
//       computer = autoWin(player);
//     }
    
//     setState(() {
//       count +=1;
//     });
//     print(player);
//     print(computer);
//     if(player == computer){
//       print('seri');
//       pemenang='Seri!!!';
//     } else if(player == 'rock.png' && computer == 'scissor.png' || player == 'scissor.png' && computer == 'paper.png' || player == 'paper.png' && computer == 'rock.png') {
//       print('you win');
//       pemenang='Kamu Menang!!!';
//     } else {
//       pemenang = 'Kamu Kalah!!!';
//       print('you lose');
//     }
//   }

//   void _showDialog() {
//     showDialog( 
//       barrierDismissible: false,
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: new Text(pemenang),
//           // content: new Text("Alert Dialog body"),
//           actions: <Widget>[
//             new FlatButton(
//               child: Text(
//                 pemenang == 'Kamu Menang!!!' ? 'Lanjut' : 'Main Lagi'
//               ),
//               onPressed: () { 
//                 pemenang == 'Kamu Menang!!!' ?
//                 {
//                 Navigator.of(context).pop(),
//                 Navigator.of(context).pop(),
//                 Navigator.of(context).pushNamed(Routes.soalScreen)
//                 }
//                 :
//                 Navigator.of(context).pop();
//                 setState(() {
//                   image1 = null;
//                   image2 = 3;
//                 });
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: Color(0xFF88da89),
//         body: Stack(
//           children: <Widget>[
//             Container(
//               margin: EdgeInsets.only(top:size.height * .07),
//               alignment: Alignment.topCenter,
//               child: Text('You Win!',style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),)
//             ),
//             Container(
//               margin: EdgeInsets.only(bottom: size.height * .1),              
//               alignment: Alignment.center,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: <Widget>[
//                   PlayerChoiceWidget(image: image1, textPlayer: 'YOUR CHOICE'),
//                   PlayerChoiceWidget(image: images[image2], textPlayer: 'COMPUTER CHOICE')
//                 ],
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(bottom: size.height * .1),
//               alignment: Alignment.bottomCenter,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   InkWell(
//                     onTap: (){
//                       a=1;
//                       setState(() {
//                         image1 = 'assets/images/rock.png';
//                         image2 = random.nextInt(3);
//                         hasil(image1, images[image2]);
//                         _showDialog();
//                       });
//                       print(image2);
//                       print(images[1]);
//                     },
//                     child: Container(
//                       margin: EdgeInsets.all(10),
//                       height: 100,
//                       width: 100,
//                       child: Image.asset('assets/images/rock.png'),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: (){
//                       a=1;
//                       setState(() {
//                         image1 = 'assets/images/paper.png';
//                         image2 = random.nextInt(3);
//                         hasil(image1, images[image2]);
//                         _showDialog();
//                       });
//                       print(image2);
//                       print(images[1]);
//                     },
//                     child: Container(
//                       margin: EdgeInsets.all(10),
//                       height: 100,
//                       width: 100,
//                       child: Image.asset('assets/images/paper.png'),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: (){
//                       a=1;
//                       setState(() {
//                         image1 = 'assets/images/scissor.png';
//                         image2 = random.nextInt(3);
//                         hasil(image1, images[image2]);
//                         _showDialog();
//                       });
//                       print(image2);
//                       print(images[1]);
//                     },
//                     child: Container(
//                       margin: EdgeInsets.all(10),
//                       height: 100,
//                       width: 100,
//                       child: Image.asset('assets/images/scissor.png'),
//                     ),
//                   )
//                 ],
//               )
//             )
//           ],
//         )
//     );
//   }

// }
