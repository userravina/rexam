import 'package:flutter/foundation.dart';
import 'package:rexam/quiz_app/modal/quiz_modal.dart';
import 'package:rexam/lib/uitls/api_helper.dart';
import 'package:rexam/quiz_app/uitls/api_helper.dart';

class Quiz_provider extends ChangeNotifier {
  Future<Quizapp> quizset() async {
    Api_helper api_helper = Api_helper();
    return await api_helper.quizget();
  }

  var index=0;
  void change(var value)
  {
    index = value;
    notifyListeners();
  }
int i=0;
  void forloop(var index)
  {
    for( i=0;i<=index;i++);
    {
        index = i;
    }
    notifyListeners();
  }
}
