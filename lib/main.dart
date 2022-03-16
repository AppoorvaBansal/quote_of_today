import 'package:flutter/material.dart';
import 'package:quote_of_today/QuoteClass/Quote.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Quote(),
    );
  }
}


