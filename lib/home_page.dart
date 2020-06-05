import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List currencies;

  @override
  void initState(){
    super.initState();
    currencies = await getCurrencies();
  }

  Future<List> getCurrencies() async {
    String cryptoUrl = "";
  } 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crypto App'),
      ),
      body: _cryptoWidget(),
    );
  }

  Widget _cryptoWidget() {
    return Container(
      child: Flexible(
        child: ListView.builder(
          itemCount: 0,
          itemBuilder: (BuildContext context, int index) {},
        ),
      ),
    );
  }
}
