import 'dart:math';

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:dashboard/Bill.dart';
import 'package:dashboard/Detail_report.dart';
import 'package:dashboard/dash_home.dart';
import 'package:dashboard/pie%20chart.dart';
import 'package:dashboard/total.dart';
import 'package:dashboard/void_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class nav extends StatefulWidget {
  const nav({super.key});

  @override
  State<nav> createState() => _navState();
}

class _navState extends State<nav> {
  int currentindex = 0;
  final pages = [
    Hom(),
    Report(),
    Tota(),
    ite(),
    pie(),
  ];
  void krish(int index){
    setState(() {
      currentindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentindex],
      bottomNavigationBar: AnimatedNotchBottomBar(
        // durationInMilliSeconds: 200,
          notchBottomBarController: NotchBottomBarController(
            index: currentindex
          ),
          bottomBarItems: [
            BottomBarItem(
                inActiveItem: Icon(Icons.home,color: Colors.pinkAccent),
                activeItem: Icon(Icons.home,color: Colors.blue)
            ),
            BottomBarItem(
                inActiveItem: Icon(Icons.shopping_bag,color: Colors.pinkAccent,),
                activeItem: Icon(Icons.shopping_bag,color: Colors.blue,)
            ),
            BottomBarItem(
                inActiveItem: Icon(Icons.takeout_dining_outlined,color: Colors.pinkAccent),
                activeItem: Icon(Icons.takeout_dining_outlined,color: Colors.blue)
            ),
            BottomBarItem(
                inActiveItem: Icon(Icons.important_devices,color: Colors.pinkAccent),
                activeItem: Icon(Icons.important_devices,color: Colors.blue)
            ),
            BottomBarItem(
                inActiveItem: Icon(Icons.pie_chart,color: Colors.pinkAccent),
                activeItem: Icon(Icons.pie_chart,color: Colors.blue)
            ),
          ],
          onTap: krish,
          kIconSize: 28.0,
          kBottomRadius: 24.0)



    );
  }
}
