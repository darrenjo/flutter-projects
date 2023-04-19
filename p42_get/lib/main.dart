import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'GET 4.2'),
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
  int _counter = 0;
  String body = "No Data";

  void getData() async {
    String address = "https://jsonplaceholder.typicode.com/users/1";
    var myResponse = await http.get(Uri.parse(address));

    //print(myResponse.statusCode);
    //print(myResponse.body);

    Map<String, dynamic> data = jsonDecode(myResponse.body);
    //print(data);

    setState(() {
      body = data.toString();
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        //title: Text("GET"),
      ),
      body: Center(
        child: Text(body),
      ),
      /*
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      */
      floatingActionButton: FloatingActionButton(
        onPressed: getData,
        tooltip: 'Retrieve Data',
        child: const Icon(Icons.get_app),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
