import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tota extends StatefulWidget {
  const Tota({super.key});

  @override
  State<Tota> createState() => _TotaState();
}

class _TotaState extends State<Tota> {
  var size,height,width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Center(child: Text("Dashboard",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 22,fontWeight: FontWeight.w500,color: Colors.blue)),)),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white54,
        child: Column(
          children: [
            SizedBox(height: 30,),
            Card(
              color: Colors.grey.shade200,
              child: Container(
                height: height/3.5,
                width: width/1.15,
                decoration: BoxDecoration(
                  // color: Colors.grey,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Text("TOTAL COVERS",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.blue))),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total covers",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey))),
                          Text("56",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey))),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total Bills",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey))),
                          Text("54",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey))),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total Bill Amount",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey))),
                          Text("₹ 177.49",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey))),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Average per cover",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey))),
                          Text("₹ 316",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey))),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Average cover per Bill",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey))),
                          Text("1037",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey))),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  child: Container(
                    height: height/7,
                    width: width/2.2,
                    decoration: BoxDecoration(
                      // color: Colors.black,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("T-shirts",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.blue))),
                          Text("₹ 17,909",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.brown))),
                          Text("56 orders",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey))),
                          Text("Avg 319.8",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey))),
                          Text("72.2% of overall sales",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey))),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: height/7,
                    width: width/2.2,
                    decoration: BoxDecoration(
                        // color: Colors.black,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("Takeout",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.blue))),
                          Text("₹ 6,480",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.brown))),
                          Text("27 orders",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey))),
                          Text("Avg 240.8",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey))),
                          Text("26.1% of overall sales",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey))),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  child: Container(
                    height: height/7,
                    width: width/2.2,
                    decoration: BoxDecoration(
                      // color: Colors.black,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("Order",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.blue))),
                          Text("₹ 3,008",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.brown))),
                          Text("21 orders",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey))),
                          Text("Avg 58.8",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey))),
                          Text("53.2% of overall sales",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey))),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: height/7,
                    width: width/2.2,
                    decoration: BoxDecoration(
                      // color: Colors.black,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("Completed",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.blue))),
                          Text("₹ 63,480",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.brown))),
                          Text("50 orders",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey))),
                          Text("Avg 178.8",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey))),
                          Text("14.1% of overall sales",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey))),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
