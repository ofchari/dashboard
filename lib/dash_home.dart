import 'package:dashboard/Bill.dart';
import 'package:dashboard/Widgets/Buttons.dart';
import 'package:dashboard/Widgets/Elevated.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Widgets/Text.dart';

class Hom extends StatefulWidget {
  const Hom({super.key});

  @override
  State<Hom> createState() => _HomState();
}

class _HomState extends State<Hom> {
  var size,height,width;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      key: _scaffoldKey,
      appBar: AppBar(
        toolbarHeight: 100,
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer(); // Access Scaffold state using GlobalKey
          },
          icon: const Icon(Icons.menu, color: Colors.grey),
        ),
         title: Text("Dashboard",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 22,fontWeight: FontWeight.w500,color: Colors.blue)),),
      ),
      drawer: Drawer(
        width: width/1.5,
        backgroundColor: Colors.grey,
        child: ListView(
          children: const [
            Column(
              children: [
               DrawerHeader(
                   child: CircleAvatar(
                     maxRadius: 150,
                     minRadius: 100,
                     backgroundImage: NetworkImage("https://pikmax.com/images/thumbs/0004752_solid-round-neck-t-shirt-for-men-by-mgrandbear_600.png"),
                   ))
              ],
            ),
            ListTile(
              leading: Icon(Icons.menu,color: Colors.white,),
              title: Text("Home",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
            ),
            ListTile(
              leading: Icon(Icons.card_travel_rounded,color: Colors.white,),
              title: Text("Product",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
            ),
            ListTile(
              leading: Icon(Icons.person,color: Colors.white,),
              title: Text("profile",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
            )
          ],
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 180.0),
                child: Container(
                  height: height/18,
                  width: width/2.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.blue,
                      width: 2
                    )
                  ),
                  child: Center(child: Text("Switch Accounts",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.blue)),)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: (){
                          Get.to(bill(),transition: Transition.circularReveal,curve: Curves.fastOutSlowIn,duration: Duration(seconds: 6));
                        },
                        child: Container(
                          height: height/7,
                          width: width/2.2,
                          decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:MyText(name: 'Today Sales' )
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("₹ 20,500",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white)),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("75 Orders ",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white)),),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: height/7,
                        width: width/2.2,
                        decoration: BoxDecoration(
                            color: Colors.purpleAccent,
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: MyText(name: 'Yes Sales',)
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("₹ 26,350",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white)),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("116 Orders ",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white)),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: height/7,
                      width: width/2.2,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Last 7 Days",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white)),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("₹ 1,26,600",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white)),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("657 Orders ",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white)),),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: height/7,
                      width: width/2.2,
                      decoration: BoxDecoration(
                          color: Colors.purple.shade600,
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("This Month",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white)),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("₹ 1,56,215",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white)),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("637 Orders ",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white)),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Text("Outlet Wise Sales Summary",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),)),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card(
                    child: Container(
                      height: height/6.5,
                      width: width/2.3,
                      decoration: BoxDecoration(
                        // color: Colors.orange,
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("NEAR POTHIGAI",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text("TVS",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("₹ 19,550",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.blue),)),
                          ),
                          Text("75 Orders ",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.deepPurpleAccent),)),
                        ],
                      )
                      ),
                  ),
                  Card(
                    child: Container(
                        height: height/6.5,
                        width: width/2.3,
                        decoration: BoxDecoration(
                            // color: Colors.orange,
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("All Outlets",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey),)),
                            ),
                            Text("₹",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.blue),)),
                          ],
                        )
                    ),
                  ),
                ],
              ),
              const MyButtons(name: 'Add to cart',boww: Colors.blue,),
              SizedBox(height: 20,),
              MyButtons(name: "Buy Now", boww: Colors.pinkAccent.shade200),
              SizedBox(height: 20,),
              const MyText(name: "Completed"),
              SizedBox(height: 20,),
              Elevated(senten: "Submit")
            ],
          ),
        ),
      ),
    );
  }
}
