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
      home: const MyHomePage(title: 'GET 4.3 Future Builder'),
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
  List data = [];

  Future getData() async {
    await Future.delayed(Duration(seconds: 2));
    String address = "https://jsonplaceholder.typicode.com/users/";
    var myResponse = await http.get(Uri.parse(address));

    //print(myResponse.statusCode);
    //print(myResponse.body);

    if (myResponse.statusCode == 200) {
      var dataResponse = jsonDecode(myResponse.body) as List;

      //print(data);
      data = dataResponse;
    } else {
      print("Unestablished connection.");
    }
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
        //child: Text(body),

        child: FutureBuilder(
            future: getData(),
            builder: (context, snapshoot) {
              if (snapshoot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else {
                return ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      final dataUser = data[index];
                      return ListTile(
                        title: Text(dataUser['name']),
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey,
                        ),
                        subtitle: Text(dataUser['email']),
                      );
                    });
              }
            }),
      ),

      //floatingActionButton: FloatingActionButton(
      //  onPressed: getData,
      //  tooltip: 'Retrieve Data',
      //  child: const Icon(Icons.get_app),
      //), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
