import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wordpaircrap/src/providers/list_provider.dart';

class MyForm extends StatefulWidget {

  const MyForm({ Key? key    }) : super(key: key);

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
final _formKey = GlobalKey<FormState>();
final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
 
    var children2 = [
                   TextFormField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        hintText: "Write your todo"
                      ),
                      validator: (String? value ){
                        if(value == null || value.isEmpty) return 'Please write something';
                        return null;
                      },
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(vertical: 16.0),
                     child:  ElevatedButton(
                       onPressed: () { 
                        
                          if(_formKey.currentState!.validate()){
                             context.read<Lists>().addToList({'name':_controller.text,'completed':false});
                             _controller.clear();
                          }
                       },
                       child:const Text('Submit')
                       ),

                  )
                ];
    return  Form(
             key: _formKey, 
              child: Column(
                children: children2,
              ),
              
            );
  }
}