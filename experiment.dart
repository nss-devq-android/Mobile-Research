import 'package:flutter/material.dart';

void main()
{
  runApp(const MyApp());
}

//stateless - screen will not change
//material app
//scaffold - skeleton of app

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //easiest way to add color
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal,
          brightness: Brightness.dark,)),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fishing Simulator'),
          centerTitle: true,
          leading: Icon(Icons.back_hand),
          actions: [ //goes @ end of app bar
            Text('Hiro'),
            Icon(Icons.login),
          ],
          backgroundColor: Colors.teal,
          //Nav bar next
        )
      ),

    );
  }
}
