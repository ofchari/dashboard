import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class bill extends StatefulWidget {
  const bill({super.key});

  @override
  State<bill> createState() => _billState();
}

class _billState extends State<bill> {
  int currentindex = 0;
  var size,height,width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          leading: GestureDetector(
            onTap: (){
              Get.back();
            },
              child: Icon(Icons.arrow_back_ios_new,color: Colors.grey,)),
          title: Text("Bill Products",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.blue)),),
        ),
        body: Container(
          height: height/1,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(CupertinoIcons.search_circle,color: Colors.grey,),
                      hintText: "Search Store",hintStyle: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2
                        ),
                        borderRadius: BorderRadius.circular(15)
                      )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: height/22,
                width: width/6,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Center(child: Text("All",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white)))),
              ),
              Container(
                height: height/22,
                width: width/5,
                decoration: BoxDecoration(
                  color: Colors.grey,
                    border: Border.all(
                        color: Colors.grey,
                        width: 1
                    ),
                    // color: Colors.blue,
                    borderRadius: BorderRadius.circular(16)
                ),
                child: Center(child: Text("T-Shirts",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white)))),
              ),
              Container(
                height: height / 22,
                width: width / 5,
                decoration: BoxDecoration(
                  color: Colors.grey,
                    border: Border.all(
                        color: Colors.grey,
                        width: 1
                    ),
                    // color: Colors.blue,
                    borderRadius: BorderRadius.circular(16)
                ),
                child: Center(
                    child: Text("orders", style: GoogleFonts.poppins(
                        textStyle: const TextStyle(fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white)))),
              ),
              Container(
                height: height / 22,
                width: width / 5,
                decoration: BoxDecoration(
                  color: Colors.grey,
                    border: Border.all(
                        color: Colors.grey,
                        width: 1
                    ),
                    // color: Colors.blue,
                    borderRadius: BorderRadius.circular(16)
                ),
                child: Center(child: Text("Pending", style: GoogleFonts.poppins(
                    textStyle: const TextStyle(fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white)))),
              )
            ],
                ),
                /// Tab bar //
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Card(
                      // color: Colors.white,
                      child: Container(
                        height: height/2.8,
                        width: width/1,
                        decoration: BoxDecoration(
                            // color: Colors.black,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("T-Shirts",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Bill Number - 552277",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Office - Bunglow Stop,Regent ,Tirupur",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Created at - 08-04-2024, 4.00pm",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),)
                              ),
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Token no 55",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),)
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Captain : moorthi",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),)
                                  ),
                                ),
                              ],
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Table -3 ",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),)
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Amount : 543",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),)
                                  ),
                                ),
                              ],
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Container(
                                  height: height/16,
                                  width: width/1.4,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Center(child: Text("View All",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white)),)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Card(
                      // color: Colors.grey.shade200,
                      child: Container(
                        height: height/2.8,
                        width: width/1,
                        decoration: BoxDecoration(
                            // color: Colors.black,
                            borderRadius: BorderRadius.circular(16)
                        ),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("T-Shirts",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Bill Number - 5544222",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Office - Bunglow Stop,Regent ,Tirupur",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Created at - 04-04-2024, 6.00pm",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),)
                              ),
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Token no 56",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),)
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Captain : Spoorthi",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),)
                                  ),
                                ),
                              ],
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Table -4 ",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),)
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Amount : 884",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),)
                                  ),
                                ),
                              ],
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Container(
                                  height: height/16,
                                  width: width/1.4,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Center(child: Text("View All",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white)),)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Card(
                      // color: Colors.grey.shade200,
                      child: Container(
                        height: height/2.8,
                        width: width/1,
                        decoration: BoxDecoration(
                          // color: Colors.black38,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("T-Shirts",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Bill Number - 553399",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Office - Bunglow Stop,Regent ,Tirupur",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Created at - 07-04-2024, 8.00pm",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),)
                              ),
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Token no 57",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),)
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Captain : Latin",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),)
                                  ),
                                ),
                              ],
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Table -5 ",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),)
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Amount : 769",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),)
                                  ),
                                ),
                              ],
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Container(
                                  height: height/16,
                                  width: width/1.4,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Center(child: Text("View All",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white)),)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            )
    ),
        ),

      );
  }
}
