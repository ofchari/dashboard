import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Elevated extends StatefulWidget {
  const Elevated({Key? key , required this.senten}) : super(key: key);
  final String senten;

  @override
  State<Elevated> createState() => _ElevatedState();
}

class _ElevatedState extends State<Elevated> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){}, child: Text(widget.senten,style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.blue)),));
  }
}
