import 'package:dashboard1/provider/data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screen/provinsi_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => Data(),
        child: ProvinsiScreen(),
      ),
    );
  }
}
