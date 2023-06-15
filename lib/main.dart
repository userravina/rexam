import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rexam/quiz_app/provider/quiz_provider.dart';
import 'package:rexam/quiz_app/view/Home_Screen.dart';
import 'package:rexam/quiz_app/view/reselte_screen.dart';
import 'package:rexam/quiz_app/view/splach.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => Quiz_provider(),
      )
    ],
    child: Sizer(
        builder: (context, orientation, deviceType) => MaterialApp(initialRoute: 'splash',
              debugShowCheckedModeBanner: false,
              routes: {
                '/': (context) => Home(),
                'result': (context) => result(),
                'splash': (context) => Splash(),
              },
            )),
  ));
}
