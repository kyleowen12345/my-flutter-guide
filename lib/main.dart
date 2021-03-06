import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wordpaircrap/src/providers/list_provider.dart';
import 'package:wordpaircrap/src/screens/home_screen.dart';

void main() {
  runApp( 
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Lists(),
          ),
      ],
      child:const MyApp(),
    ),);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
   Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Startup Name Generator',
      theme: ThemeData(primarySwatch: Colors.teal), 
      home:const HomePage()
    );
  }
}



 




