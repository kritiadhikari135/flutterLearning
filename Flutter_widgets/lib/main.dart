import 'package:flutter/material.dart';
import 'dart:developer' as developer; // Importing dart:developer for the log function

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'Flutter Demo',
      theme: ThemeData(



        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    primaryColor: Colors.deepPurple, // Explicitly set primaryColor
    appBarTheme: const AppBarTheme(
    backgroundColor: Colors.deepPurple, // Set AppBar background color
    foregroundColor: Colors.white,
    ),
      ),
      home: const MyHomePage(title: 'Flutter Widgets'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title:const  Text('Flutter widget'),
      ),
      // body: Center(
      //   child:Text('Hello world',  style: TextStyle(fontSize: 25),),
      // ) center widgetss.....


      // body: Center(
      //   child: Container(
      //     width:200,
      //     height:100,
      //     color: Colors.blueGrey,
      //     child:Center(child: Text('this is a test', style: TextStyle(color:Colors.white),),
      //      
      //
      //     )
      //
      //   ),
      //
      // )


      // body:  Center(
      //   child: Container(
      //     width:100 ,
      //     height: 100,
      //     color: Colors.cyan,
      //     child: Text('Hello Developers'),
      //
      //
      //
      //       );
      // ),
      
      
      
      // text wedgets
      // body: Text('test wedgets', style:TextStyle(
      //   fontSize: 35,
      //   color: Colors.lightBlue,
      //   fontWeight: FontWeight.bold,
      //   backgroundColor: Colors.cyan,
      //
      // ),)
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                developer.log('Text button pressed'); // Using developer.log instead of print
              },
              onLongPress: () {
                developer.log('Long press on text button'); // Using developer.log instead of print
              },
              child: const Text("Click Here!"),
            ),
            const SizedBox(height: 20), // Spacer between buttons
            ElevatedButton(
              onPressed: () {
                developer.log('Elevated button pressed'); // Using developer.log instead of print
              },
              onLongPress: (){
                print('elevated button');
              },
              child: const Text('Elevated Button'),
            ),
            OutlinedButton(onPressed: (){
              developer.log("outlined button");
            }, child: const Text('outlined button'))
          ],
        ),
      ),
    );
  }
}