import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_image_listview/theme.dart';
import 'package:test_image_listview/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final widgetsList = [
      AppBarNoIcon(),
      AppBarIconLeading(),
      AppBarIconTrailing(),
      AppBarMeta(),
      AppBarImage(),
    ];

    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomTheme.lightTheme,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Container(
            width: 360,
            child: ListView.separated(
              itemCount: widgetsList.length,
              itemBuilder: (context, i) {
                return widgetsList[i];
              },
              separatorBuilder: (context, i) {
                return SizedBox(
                  height: 60,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
