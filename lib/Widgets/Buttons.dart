import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButtons extends StatefulWidget {
  const MyButtons({Key? key, required this.name,required this.boww}) : super(key: key);

  final String name;
  final Color boww;

  @override
  State<MyButtons> createState() => _MyButtonsState();
}

class _MyButtonsState extends State<MyButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 300,
      decoration: BoxDecoration(
        color: widget.boww,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Center(child: Text(widget.name,style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white)),)),
    );
  }
}




