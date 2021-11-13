import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wordpaircrap/src/providers/list_provider.dart';
import 'package:wordpaircrap/src/widgets/todo_lists.dart';
import 'package:wordpaircrap/src/widgets/navigation_drawer.dart';


class CompletedTodoInList extends StatefulWidget {
  const CompletedTodoInList({ Key? key }) : super(key: key);

  @override
  _CompletedTodoInListState createState() => _CompletedTodoInListState();
}

class _CompletedTodoInListState extends State<CompletedTodoInList> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      drawer:const NavbarDrawer(),
      appBar: AppBar(
        title: const Text('Completed List'),
      ),
      body: Container(
        padding:const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Column(
          children: [
             TodoList(todos:context.watch<Lists>().todos.where((element) => element['completed'] == true).toList())
          ] ,
     ),
      )
    );
  }
}

