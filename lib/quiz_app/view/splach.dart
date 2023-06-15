
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),() {
      Navigator.pushNamed(context, '/');
    }, );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:  Colors.teal.shade300,
      body: Stack(
        children:[ Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                  child: CircleAvatar(radius: 140,backgroundImage: AssetImage('assets/images/a.png'),)
              ),

              Text(
                "Quiz App",
                style: TextStyle(fontSize: 35,color: Colors.black),
              ),
            ],
          ),
        ),],
      ),
    );
  }
}