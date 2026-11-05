import 'package:flutter/material.dart';

class GridBasic extends StatelessWidget {
  const GridBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 15,
        childAspectRatio: 0.5,
        ),
        children: [
          Container(
            color: Colors.amber,
            child:  FlutterLogo(
            size: 64,
            style: FlutterLogoStyle.markOnly,
          ),
          ),
          Container(
            color: Colors.blue,
            child:  FlutterLogo(
            size: 64,
            style: FlutterLogoStyle.horizontal,
          ),
          ),
          Container(
            color: Colors.redAccent,
            child:  FlutterLogo(
            size: 64,
            style: FlutterLogoStyle.stacked,
          ),
          ),
          Container(
            color: Colors.blueGrey,
            child:  FlutterLogo(
            size: 64,
            style: FlutterLogoStyle.markOnly,

          ),
          ),
          
        ],
    );
  }
}