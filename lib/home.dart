import 'package:flutter/material.dart';
import 'package:flutter_scrolling_list/header.dart';
import 'package:flutter_scrolling_list/row.dart';
import 'package:flutter_scrolling_list/row_width_card.dart';
 // Corrected file name

class Home extends StatefulWidget {
  const Home({Key? key, required String title}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listview")),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return HeaderWidget(index: index);
            } else if (index >= 1 && index <= 3) {
              return RowWithCardWidget(key: Key(index.toString()), index: index); // Provide a unique Key
            } else {
              return RowWidget(key: Key(index.toString()), index: index); // Provide a unique Key
            }
          },
          
        ),
      ),
    );
  }
}