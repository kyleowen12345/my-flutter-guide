import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wordpaircrap/src/providers/list_provider.dart';

class TodoList extends StatefulWidget {
 
  const  TodoList({Key? key,    }) : super(key: key);

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {


  @override
  Widget build(BuildContext context) {
    
    return Expanded(
              child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  padding:const EdgeInsets.fromLTRB(10.0, 0, 0, 15.0),
                  decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Colors.grey[200],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children:[ 
                          Container(
                            constraints:const BoxConstraints(maxWidth: 100),
                            child: Text(
                              context.watch<Lists>().todos[index]["name"].toString(),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              softWrap: false,
                              style:const TextStyle(
                                 fontSize:20
                              ),
                              ),
                          ),
                          Row(
                            children: [
                                IconButton(
                                  onPressed: (){
                                    // setState(() {
                                    //   // widget.todos.removeWhere((element) => element == widget.todos[index]);
                                    // });
                                    context.read<Lists>().removeFromList(Provider.of<Lists>(context, listen: false).todos[index]);
                                  },
                                  icon:const Icon(
                                    Icons.delete,
                                    color: Colors.red
                                    ),
                                  padding:const EdgeInsets.fromLTRB(0, 13.0, 0, 0),
                                 
                                  ),
                                IconButton(
                                  onPressed: (){
                                    // setState(() {
                                    //   // widget.todos[index]= {...widget.todos[index],'completed':true};

                                    // });
                                    context.read<Lists>().updateTodoInAList(Provider.of<Lists>(context,listen: false).todos[index]);
                                  },
                                  icon:const Icon(
                                    Icons.save,
                                    color:Colors.green
                                  ),
                                  padding:const EdgeInsets.fromLTRB(0, 13.0, 0, 0),
                                  
                                  )
                          ]
                          )
                          
                    ]),
                );
              },
              itemCount: context.watch<Lists>().todos.length,
              separatorBuilder: (BuildContext context, int index) => const Divider(),
            )
            );
  }
}