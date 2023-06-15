import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rexam/quiz_app/modal/quiz_modal.dart';

class Api_helper {
  Future<Quizapp> quizget() async {
    String? like =
        "https://opentdb.com/api.php?amount=10&category=27&difficulty=medium&type=multiple";
    var responce = await http.get(Uri.parse(like));

    var json = jsonDecode(responce.body);
    print(json);
    Quizapp data = Quizapp.fromJson(json);

    return data;
  }
}
