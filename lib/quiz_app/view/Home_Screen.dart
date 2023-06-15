import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rexam/quiz_app/modal/quiz_modal.dart';
import 'package:rexam/quiz_app/provider/quiz_provider.dart';
import 'package:sizer/sizer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Quiz_provider? pt;
  Quiz_provider? pf;

  var index = 0;

  @override
  Widget build(BuildContext context) {
    pf = Provider.of<Quiz_provider>(context, listen: false);
    pt = Provider.of<Quiz_provider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.teal.shade300,
      appBar: AppBar(leading: Icon(Icons.arrow_back,color: Colors.black,),
        backgroundColor: Colors.teal.shade400,
        title: Text(
          "Quiz App",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text("Erroe:-${snapshot.hasError}");
          } else if (snapshot.hasData) {
            Quizapp modal = snapshot.data!;
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                  child: Center(child: Image.asset("assets/images/1.png")),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Center(
                    child: Container(
                      color: Colors.teal.shade200,
                      height: 10.h,
                      width: 90.w,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "${modal.results![0].question}",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black87),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        modal.results![0].question![0] ==
                            modal.results![index++].question![0];
                      });
                    },
                    child: Text(
                      "1.${modal.results![0].incorrectAnswers![0]}",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                          fontWeight: FontWeight.w400),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.teal.shade200)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        modal.results![0].question![0] ==
                            modal.results![index++].question![0];
                      });
                    },
                    child: Text(
                      "2.${modal.results![0].incorrectAnswers![1]}",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                          fontWeight: FontWeight.w400),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.teal.shade200)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        modal.results![0].question![0] ==
                            modal.results![index++].question![0];
                      });

                    },
                    child: Text(
                      "3.${modal.results![0].incorrectAnswers![2]}",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                          fontWeight: FontWeight.w400),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.teal.shade200)),
                  ),
                ),
                // Expanded(
                //   child: Padding(
                //     padding:
                //         const EdgeInsets.only(top: 20, left: 10, right: 10),
                //     child: ListView.builder(
                //       itemBuilder: (context, index) {
                //         return Column(
                //           children: [
                //             // Row(
                //             //   children: [
                //             //     TextButton(
                //             //       onPressed: () {},
                //             //       child: Text(
                //             //         "${modal.results![0].incorrectAnswers}",
                //             //         style: TextStyle(fontSize: 15),
                //             //       ),
                //             //       style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.teal.shade100)),
                //             //     ),
                //             //   ],
                //             // ),
                //           ],
                //         );
                //       },
                //       itemCount: modal.results!.length,
                //     ),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 70,left: 270),
                  child: Row(children: [TextButton(
                    onPressed: () {
                      setState(() {
                       Navigator.pushNamed(context, 'splash');
                      });

                    },
                    child: Text(
                      "Restart",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                          fontWeight: FontWeight.w400),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.blue.shade100)),
                  ),],),
                )
              ],
            );
          }
          return Center(
            child: CircularProgressIndicator(color: Colors.black),
          );
        },
        future: pt!.quizset(),
      ),
    ));
  }
}
