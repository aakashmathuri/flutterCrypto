import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

import 'home_page.dart';

void main() async {
  List currencies = await getCurrencies();
  print(currencies);
  runApp(MyApp(currencies));
}

class MyApp extends StatefulWidget {
  final List _currencies;
  MyApp(this._currencies);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomePage(widget._currencies),
    );
  }
}

Future<List> getCurrencies() async {
  String cryptoUrl = "https://api.coinmarketcap.com/v1/ticker/?limit=50";
  http.Response response = await http.get(cryptoUrl);
  return json.decode(response.body);
}
