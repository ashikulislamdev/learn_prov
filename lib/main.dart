import 'package:flutter/material.dart';
import 'package:learn_prov/font_stmt/font_home.dart';
import 'package:learn_prov/font_stmt/setting_provider.dart';
import 'package:provider/provider.dart';

  void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Setting(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: FontHomePage(),
      ),
    );
  }
}
