import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tok/tok_bloc.dart';
import 'package:tok/home_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final String _title = "Theory of Knowledge";


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TokBloc(),
      child: MaterialApp(
        title: _title,
        theme: ThemeData.dark(),
        home: HomePage(title: _title,),
        debugShowCheckedModeBanner: false,

      ),
    );
  }
}
