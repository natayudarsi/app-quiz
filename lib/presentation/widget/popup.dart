// import 'package:flutter/material.dart';
// import 'package:px/common/config/screen_config.dart';
// import 'package:px/presentation/themes/color_theme.dart';
// import 'package:px/presentation/widgets/show_dialog_widget/dialog_custom_string.dart';

// class ShowDialogCustomError {
//   String title;
//   String subTitle;
//   String entity;

//   ShowDialogCustomError(
//       {@required this.title, @required this.subTitle, @required this.entity});

//   void errorrDialog(BuildContext context) {
//     var theme = Theme.of(context);
//     showDialog<String>(
//         barrierDismissible: false,
//         context: context,
//         builder: (BuildContext context) {
//           return SimpleDialog(
//             key: Key('dialogCustom_dialog_pop_up'),
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(10.0))),
//             children: <Widget>[
//               Container(
//                 padding: EdgeInsets.only(left: 10, right: 10),
//                 height: (235 / 8.12) * ScreenConfig.heightMultiplier,
//                 width: (300 / 3.75) * ScreenConfig.widthMultiplier,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: <Widget>[
//                     Container(
//                       padding: const EdgeInsets.only(bottom: 5),
//                       key: Key('dialogCustom_container_imageSuccess'),
//                       child: Image.asset(
//                         entity == 'amaan'
//                             ? DialogCustomString.amaanError
//                             : entity == 'gofin'
//                                 ? DialogCustomString.gofinError
//                                 : DialogCustomString.pxError,
//                         height: (120 / 8.12) * ScreenConfig.heightMultiplier,
//                         width: (140 / 3.75) * ScreenConfig.widthMultiplier,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(bottom: 3),
//                       child: Center(
//                         child: Text(
//                           title,
//                           key: Key('dialogCustom_text_titleDialog'),
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontFamily: 'TTCommons',
//                               color: Grey.warmGrey,
//                               fontSize:
//                                   (18 / 8.12) * ScreenConfig.heightMultiplier),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(bottom: 10),
//                       child: Center(
//                         child: Text(
//                           subTitle,
//                           key: Key('dialogCustom_text_subtitleDialog'),
//                           style: TextStyle(
//                               fontFamily: 'TTCommons',
//                               color: Grey.warmGrey,
//                               fontSize:
//                                   (16 / 8.12) * ScreenConfig.heightMultiplier),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       height: MediaQuery.of(context).size.height * 0.05,
//                       width: MediaQuery.of(context).size.width,
//                       child: RaisedButton(
//                         highlightElevation: 0,
//                         elevation: 0,
//                         key: Key('dialodCustom_button_tryAgain'),
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10)),
//                         color: theme.buttonColor,
//                         onPressed: () {
//                           Navigator.of(context).pop();
//                         },
//                         child: Text(
//                           'Try Again',
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize:
//                                   (14 / 8.12) * ScreenConfig.heightMultiplier),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           );
//         });
//   }
// }
