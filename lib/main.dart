import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador de Pessoas',
      theme: ThemeData(
    
        primarySwatch: Colors.blue,
      ),
      home: const Contador(), //nome do app, referente ao método/à classe seguinte 
    );
  }
}

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {

  void decrement(){
    print("Decrement");
  }
  void increment(){
    print("Increment");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 203, 219, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text("Pode entrar, lindes!", style: TextStyle(fontSize: 30, color: Colors.pink)),
          Text("0", style: TextStyle(fontSize: 30, color: Colors.pink)),
      Row (
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: decrement, child: Text ("Saiu", style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 255, 255, 255) )),
            ),
            TextButton(
            onPressed: increment, child: Text ("Entrou", style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 255, 255, 255) )),
            )
        ],
      )
      ],
      ),
    );
  }
}