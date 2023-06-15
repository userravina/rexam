import 'package:flutter/material.dart';

class result extends StatefulWidget {
  const result({super.key});

  @override
  State<result> createState() => _resultState();
}

class _resultState extends State<result> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text("welcome")),
    ));
  }
}
