import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ite extends StatefulWidget {
  const ite({super.key});

  @override
  State<ite> createState() => _iteState();
}

class _iteState extends State<ite> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }
  var size,height,width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
     body: Container(
       height: double.infinity,
       width: double.infinity,
       child: SingleChildScrollView (
         child: Column(
           children: [
             SizedBox(height: 60,),
             Row(
               children: [
                 Row(
                   children: [
                     const Icon(Icons.arrow_back_ios_new,color: Colors.grey,),
                     Text("VoidSelection",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.blue)),)
                   ],
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 22.0),
                   child: Text("Voiditem",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black)),),
                 ),
               ],
             ),
             SizedBox(height: 20,),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Column(
                     children: [
                       Text("Select Store",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black)),),
                       Container(
                         height: height/18,
                         width: width/2.5,
                         decoration: BoxDecoration(
                           border: Border.all(
                             color: Colors.blue,
                             width: 2
                           ),
                           borderRadius: BorderRadius.circular(7)
                         ),
                         child: TextFormField(
                           textAlign: TextAlign.center,
                           decoration: InputDecoration(
                             hintText: "Select",hintStyle: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey))
                           ),
                         ),
                       )
                     ],
                   ),
                   Column(
                     children: [
                       Text("Select Cashier",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black)),),
                       Container(
                         height: height/18,
                         width: width/2.5,
                         decoration: BoxDecoration(
                             border: Border.all(
                                 color: Colors.blue,
                                 width: 2
                             ),
                             borderRadius: BorderRadius.circular(7)
                         ),
                         child: TextFormField(
                           textAlign: TextAlign.center,
                           decoration: InputDecoration(
                               hintText: "Select",hintStyle: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey))
                           ),
                         ),
                       )
                     ],
                   ),
                 ],
               ),
             ),
             SizedBox(height: 20,),
             Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 InkWell(
                   onTap: () => _selectDate(context),
                   child: IntrinsicHeight(
                     child: Container(
                       height: height/15.3,
                       width: width/2.8,
                       decoration: BoxDecoration(
                           // color: Colors.grey.shade100,
                           border: Border.all(
                               color: Colors.white
                           ),
                           borderRadius: BorderRadius.circular(12)
                       ),
                       child: Card(
                         child: Row(
                           children: [
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Text(
                                 "${selectedDate.toLocal()}".split(' ')[0],
                                 style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                               ),
                             ),
                             VerticalDivider(
                               color: Colors.grey.shade500,
                               thickness: 1.5,
                               indent: 2.0,
                               endIndent: 5.0,
                               width: 3,
                             ),
                             Padding(
                               padding: const EdgeInsets.all(6.0),
                               child: Icon(Icons.calendar_month,color: Colors.grey,size: 15,),
                             )
                           ],
                         ),
                       ),
                     ),
                   ),
                 ),
                 InkWell(
                   onTap: () => _selectDate(context),
                   child: IntrinsicHeight(
                     child: Container(
                       height: height/15.3,
                       width: width/2.8,
                       decoration: BoxDecoration(
                         // color: Colors.grey.shade100,
                           border: Border.all(
                               color: Colors.white
                           ),
                           borderRadius: BorderRadius.circular(12)
                       ),
                       child: Card(
                         child: Row(
                           children: [
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Text(
                                 "${selectedDate.toLocal()}".split(' ')[0],
                                 style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                               ),
                             ),
                             VerticalDivider(
                               color: Colors.grey.shade500,
                               thickness: 1.5,
                               indent: 2.0,
                               endIndent: 5.0,
                               width: 3,
                             ),
                             Padding(
                               padding: const EdgeInsets.all(6.0),
                               child: Icon(Icons.calendar_month,color: Colors.grey,size: 15,),
                             )
                           ],
                         ),
                       ),
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     height: height/18,
                     width: width/4.5,
                     decoration: BoxDecoration(
                       color: CupertinoColors.activeBlue,
                       borderRadius: BorderRadius.circular(12)
                     ),
                     child: Center(child: Text("Submit",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white)),)),
                   ),
                 ),
               ],
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Card(
                 child: Container(
                   height: height/3.8,
                   width: width/1.05,
                   decoration: BoxDecoration(
                       // color: Colors.grey.shade200,
                       borderRadius: BorderRadius.circular(12)
                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("#1",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black))),
                         Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             Text("Order No : 137082",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black))),
                             Text("Order Type : T-shirts",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black))),
                           ],
                         ),
                         Divider(
                           color: Colors.grey,
                           thickness: 1,
                         ),
                         Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             Text("Amount : 173",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black))),
                             Text("Time : 6/4/2023 3.7 PM",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black))),
                           ],
                         ),
                         Divider(
                           color: Colors.grey,
                           thickness: 1,
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 30.0),
                           child: Text("Buyer : Sri Balaji Texknit Company",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black))),
                         ),
                         Divider(
                           color: Colors.grey,
                           thickness: 1,
                         ),
         
                         Padding(
                           padding: const EdgeInsets.only(left: 30.0),
                           child: Text("Office : Regent Solutions Tech",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black))),
                         ),
                         Divider(
                           color: Colors.grey,
                           thickness: 1,
                         ),
         
                         Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             Text("Types : Fabric",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black))),
                             Text("Size : M - XXL",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black))),
                           ],
                         ),
                       ],
                     ),
                   ),
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 20.0),
               child: Card(
                 child: Container(
                   height: height/3.8,
                   width: width/1.05,
                   decoration: BoxDecoration(
                       // color: Colors.grey.shade200,
                       borderRadius: BorderRadius.circular(12)
                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("#2",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black))),
                         Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             Text("Order No : 138082",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black))),
                             Text("Order Type : T-shirts",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black))),
                           ],
                         ),
                         Divider(
                           color: Colors.grey,
                           thickness: 1,
                         ),
                         Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             Text("Amount : 184",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black))),
                             Text("Time : 8/4/2023 4.7 PM",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black))),
                           ],
                         ),
                         Divider(
                           color: Colors.grey,
                           thickness: 1,
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 30.0),
                           child: Text("Buyer : Spoorthi Texknit Company",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black))),
                         ),
                         Divider(
                           color: Colors.grey,
                           thickness: 1,
                         ),
         
                         Padding(
                           padding: const EdgeInsets.only(left: 30.0),
                           child: Text("Office : Regent Solutions Tech",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black))),
                         ),
                         Divider(
                           color: Colors.grey,
                           thickness: 1,
                         ),
         
                         Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             Text("Types : Cotton",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black))),
                             Text("Size : M - XXL",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black))),
                           ],
                         ),
         
                       ],
                     ),
                   ),
                 ),
               ),
             ),
             SizedBox(height: 100,)
           ],
         ),
       ),
       ),
     );
  }
}
