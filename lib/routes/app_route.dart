import 'package:flutter/material.dart';
import 'package:flutter_gumilang/Navigation/menu.dart';
import 'package:flutter_gumilang/gridview/latihangrid.dart';
import 'package:flutter_gumilang/listview_widget/latihan_view.dart';
import 'package:flutter_gumilang/listview_widget/list_basic.dart';
import 'package:flutter_gumilang/listview_widget/list_builder_widget.dart';
import 'package:flutter_gumilang/pages/formulir_input_page.dart';
import 'package:flutter_gumilang/pages/perpus_input_page.dart';
import 'package:flutter_gumilang/row_column_widget/latihan.dart';
import 'package:flutter_gumilang/size_box_Stack/LatihanLayout.dart';
import 'package:flutter_gumilang/size_box_Stack/Latihancopas.dart';

class AppRoute {
  static const menu = '/';
  static const list = '/list';
  static const grid = '/grid';
  static const rowcolumn = '/latihanrowcolumn';
  static const sizebox = '/latihanpakacedua';
  static const formulir = '/FormEkskul';
  static const perpustakaan = '/Perpustakaan';

  static Map<String, WidgetBuilder> routes = {
    menu: (context) => Contoh(),
    list: (context) => LatihanView(),
    grid: (context) => GridLatihanWidget(),
    rowcolumn: (context) => Latihan(),
    sizebox: (context) => LatihanPakaceDua(),
    formulir: (context) => FormEkskul(),
    perpustakaan: (context) => Perpustakaan(),
  };
}
