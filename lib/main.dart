import 'package:flutter/material.dart';
import 'package:flutter_gumilang/container_widget/container_widget.dart';
import 'package:flutter_gumilang/container_widget/latihan_container.dart';
import 'package:flutter_gumilang/size_box_Stack/ExpandedWidget.dart';
import 'package:flutter_gumilang/size_box_Stack/LatihanLayout.dart';
import 'package:flutter_gumilang/size_box_Stack/LayoutDua.dart';
import 'package:flutter_gumilang/size_box_Stack/LayoutEmpat.dart';
import 'package:flutter_gumilang/size_box_Stack/LayoutSatu.dart';
import 'package:flutter_gumilang/size_box_Stack/LayoutTiga.dart';
import 'package:flutter_gumilang/size_box_Stack/StackWidget.dart';
import 'package:flutter_gumilang/row_column_widget/column_widget.dart';
import 'package:flutter_gumilang/row_column_widget/latihan.dart';
import 'package:flutter_gumilang/row_column_widget/layout_widget.dart';
import 'package:flutter_gumilang/row_column_widget/row_column.dart';
import 'package:flutter_gumilang/row_column_widget/row_widget.dart';
import 'package:flutter_gumilang/size_box_Stack/sizedbox_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override 
  Widget build(BuildContext Context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar : AppBar(
          title: Text("Latihan"),
          backgroundColor: Colors.white,
        ), // AppBar
        body: Latihanlayout() // Center
      ) //Scaffold
    ); // MaterialApp
  }
}

class HelloWidget extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hello Flutter",
        style: TextStyle(
          fontSize : 24,
          fontWeight : FontWeight.bold,
          backgroundColor: Colors.amber,
          fontStyle: FontStyle.italic,
        ) // TextStyle
      ) // text
    );
  }
}