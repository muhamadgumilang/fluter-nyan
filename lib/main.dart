import 'package:flutter/material.dart';
import 'package:flutter_gumilang/Navigation/contoh_nav.dart';
import 'package:flutter_gumilang/container_widget/container_widget.dart';
import 'package:flutter_gumilang/container_widget/latihan_container.dart';
import 'package:flutter_gumilang/gridview/gird_basic.dart';
import 'package:flutter_gumilang/gridview/grid_builder.dart';
import 'package:flutter_gumilang/gridview/latihangrid.dart';
import 'package:flutter_gumilang/listview_widget/latihan_view.dart';
import 'package:flutter_gumilang/listview_widget/list_basic.dart';
import 'package:flutter_gumilang/listview_widget/list_builder2.dart';
import 'package:flutter_gumilang/listview_widget/list_builder_widget.dart';
import 'package:flutter_gumilang/listview_widget/list_separated.dart';
import 'package:flutter_gumilang/size_box_Stack/ExpandedWidget.dart';
import 'package:flutter_gumilang/size_box_Stack/LatihanLayout.dart';
import 'package:flutter_gumilang/size_box_Stack/Latihancopas.dart';
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
      initialRoute: '/',
      routes: {
        // Maping From route name to page
        '/':(context) => Contoh(),
        '/grid':(context) => GridBuilderWidget(),
        '/list' :(context) => ListBuilderWidget(),
        '/latihanlist' :(context) => LatihanView(),
        '/latihanrowcolumn' :(context) => Latihan(),
        '/latihansizebox' :(context) => LatihanPakaceDua(),
       

      },


      // debugShowCheckedModeBanner: false,
      // home: Scaffold(appBar : AppBar( title: Text("Latihan"),
      //     backgroundColor: Colors.white,
      //   ), // AppBar
      //   body: Contoh() // Center
      // ) //Scaffold
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