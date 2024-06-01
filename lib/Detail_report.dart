import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  var size,height,width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("DETAIL REPORT",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 22,fontWeight: FontWeight.w500,color: Colors.blue)),)),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // address//
              Container(
                height: height/5.3,
                width: width/1.05,
                decoration: BoxDecoration(
                  color: CupertinoColors.activeBlue,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Regent Solutions Tech",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white)),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Bunglow Stop,near ",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white)),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Avinashi Road",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white)),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Tirupur",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white)),),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.filter_list_alt,color: Colors.white,size: 30,),
                    )
                  ],
                ),
              ),
              // sales summry//
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                    child: Text("Sales Summary",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.blue)),)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DataTable(
                  dividerThickness: 2,
                  border: TableBorder.all(
                    color: Colors.grey,
                    width: 2,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  showCheckboxColumn: true,
                  headingRowColor: MaterialStateColor.resolveWith((states) => CupertinoColors.activeBlue),
                  // showBottomBorder: true,

                  // headingRowHeight: 60.0,
                  columns: [
                    DataColumn(
                      label: Expanded(child: Text("Order Type",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white)),)),
                    ),
                    DataColumn(
                      label: Expanded(child: Text("orders",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white)))),
                    ),
                    DataColumn(
                      label: Expanded(child: Text("Total Amount",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white)))),
                    )
                  ],
                  rows: [
                    DataRow(
                      color: MaterialStateProperty.resolveWith((states) => Colors.grey.shade300),
                        cells: [
                      DataCell(Text("Completed Order",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.blue)))),
                      DataCell(Text("96.00",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.blue)))),
                      DataCell(Text("3,40,000",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.blue)))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("Pending Order",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.blue)))),
                      DataCell(Text("32.00",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.blue)))),
                      DataCell(Text("4,20,000",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.blue)))),
                    ]),
                    DataRow(
                      color: MaterialStateProperty.resolveWith((states) => Colors.grey.shade200),
                        cells: [
                      DataCell(Text("Voided Order",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.blue)))),
                      DataCell(Text("55.00",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.blue)))),
                      DataCell(Text("1,40,000",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.blue)))),
                    ])
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: height/15,
                  width: width/1.06,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                        end: Alignment.centerRight,
                        colors: [
                        Colors.lightBlue.shade200,
                      CupertinoColors.activeBlue
                    ]),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Highest Bill Value",style:  GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white)),),
                        Text("2105.00",style:  GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white)),),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: height/15,
                  width: width/1.06,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.lightBlue.shade200,
                            CupertinoColors.activeBlue
                          ]),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Lowest Bill Value",style:  GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white)),),
                        Text("20.00",style:  GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white)),),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: height/15,
                  width: width/1.06,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.lightBlue.shade200,
                            CupertinoColors.activeBlue
                          ]),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Completed",style:  GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white)),),
                        Text("24803.00",style:  GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white)),),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Sales By Order Types",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.purple))),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DataTable(
                  dividerThickness: 2,
                  border: TableBorder.all(
                      color: Colors.purple,
                      width: 2,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  // showCheckboxColumn: true,
                  headingRowColor: MaterialStateColor.resolveWith((states) => CupertinoColors.systemPurple),
                  showBottomBorder: true,

                  // headingRowHeight: 60.0,
                  columns: [
                    DataColumn(
                      label: Expanded(child: Text("Types",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white)),)),
                    ),
                    DataColumn(
                      label: Expanded(child: Text("orders",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white)))),
                    ),
                    DataColumn(
                      label: Expanded(child: Text("Total Amount",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white)))),
                    )
                  ],
                  rows: [
                    DataRow(
                        color: MaterialStateProperty.resolveWith((states) => Colors.grey.shade300),
                        cells: [
                          DataCell(Text("T-shirts",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.blue)))),
                          DataCell(Text("97.00",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.blue)))),
                          DataCell(Text("4,40,000",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.blue)))),
                        ]),
                    DataRow(cells: [
                      DataCell(Text("Orders",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.blue)))),
                      DataCell(Text("31.00",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.blue)))),
                      DataCell(Text("4,30,000",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.blue)))),
                    ]),
                    DataRow(
                        color: MaterialStateProperty.resolveWith((states) => Colors.grey.shade200),
                        cells: [
                          DataCell(Text("Pending",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.blue)))),
                          DataCell(Text("57.00",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.blue)))),
                          DataCell(Text("2,40,000",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.blue)))),
                        ])
                  ],
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
