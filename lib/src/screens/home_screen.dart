import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wordpaircrap/src/providers/list_provider.dart';
import 'package:wordpaircrap/src/widgets/todo_lists.dart';
import 'package:wordpaircrap/src/widgets/form.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
  
}

class _HomePageState extends State<HomePage> {
final List<Map<String, Object>> todos =  [{'name':'juices','completed':false},{'name':'coke','completed':false},{'name':'jews','completed':false}];
   
 
  @override
  Widget build(BuildContext context) {
    print(context.watch<Lists>().todos);
    var container = Container(
        margin:const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
        child: Column(
          children:const [ 
             MyForm(),
            TodoList()
            
          ]
        ),
      );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Samples'),
      ),
      body: container
      
               
      );
    
  }


}