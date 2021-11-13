import 'package:flutter/material.dart';

class Lists with ChangeNotifier {
  final List<Map<String, Object>> _todos =  [{'name':'juices','completed':false},{'name':'coke','completed':false},{'name':'jews','completed':false}];
  

  List<Map<String, Object>> get todos => _todos;

  void addToList(Map<String, Object> list) {
      _todos.add(list);
    notifyListeners();
  }

  void removeFromList(Map<String, Object> list) {
      _todos.removeWhere((element) => element == list);
    notifyListeners();
  }

  void updateTodoInAList(Map<String, Object> list) {
   int todoIndex = _todos.indexWhere((element) => element == list);
   _todos[todoIndex] = {..._todos[todoIndex],'completed':list['completed'] == false ? true : false  };
  //  print(!_todos[todoIndex]['completed']);
    notifyListeners();
  }
}