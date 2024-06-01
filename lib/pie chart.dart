import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';

class pie extends StatefulWidget {
  const pie({Key? key}) : super(key: key);

  @override
  State<pie> createState() => _pieState();
}

class _pieState extends State<pie> {
  var size,height,width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Center(child: Text('Pie Chart',style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 22,fontWeight: FontWeight.w500,color: Colors.blue)),)),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                child: Container(
                  height: height/1.711,
                  width: width/1.05,
                  decoration: BoxDecoration(
                      // color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.calendar_view_month,size: 23,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.wallet_giftcard,size: 23,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.sync,color: Colors.blue,size: 23,),
                          ),
                        ],
                      ),
                      Container(
                        height: height/30,
                        width: width/1.198,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey
                            ),
                            borderRadius: BorderRadius.circular(6)
                        ),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text("   Today",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black)),),
                            )),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: height/16,
                          width: width/1.1,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey
                              ),
                              borderRadius: BorderRadius.circular(6)
                          ),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Center(child: Text("Regent Solutions Tech",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black)),)),
                              )),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.do_not_disturb_on_total_silence_sharp,color: Colors.red,size: 20,),
                              Text("  Fabric",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.red)),)
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.do_not_disturb_on_total_silence_sharp,color: Colors.blue,size: 20,),
                              Text("  Cotton",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.blue)),)
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.do_not_disturb_on_total_silence_sharp,color: Colors.green,size: 20,),
                              Text("  Nylon",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.green)),)
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.do_not_disturb_on_total_silence_sharp,color: Colors.pinkAccent,size: 20,),
                              Text("  Lycra",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.pinkAccent.shade100)),)
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.do_not_disturb_on_total_silence_sharp,color: Colors.purple,size: 20,),
                              Text("  Polyster",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.purple)),)
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 250,
                        width: 300,
                        child: SfCircularChart(
                          series: <CircularSeries>[
                            PieSeries<ChartData, String>(
                              dataSource: <ChartData>[
                                ChartData('Fabric', 10, Colors.red),
                                ChartData('Cotton', 20, Colors.blue),
                                ChartData('Nylon', 30, Colors.green),
                                ChartData('Lycra', 40, Colors.pinkAccent.shade100),
                                ChartData('Polyster', 50, Colors.purple),
                              ],
                              xValueMapper: (ChartData data, _) => data.x,
                              yValueMapper: (ChartData data, _) => data.y,
                              pointColorMapper: (ChartData data, _) => data.color,
                              dataLabelSettings: DataLabelSettings(
                                // Set text style for data labels
                                textStyle: TextStyle(
                                  color: Colors.black, // Change the text color here
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                  ),
                    ],
                  ),
                ),
              ),
          SizedBox(height: 20,),
          Align(
            alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text('Sales Summary',style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black))),
              )),
              SizedBox(height: 10,),
              Container(
                height: height/30,
                width: width/1.198,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey
                    ),
                    borderRadius: BorderRadius.circular(6)
                ),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text("   Today",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black)),),
                    )),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: height/16,
                  width: width/1.1,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey
                      ),
                      borderRadius: BorderRadius.circular(6)
                  ),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Center(child: Text("Regent Solutions Tech",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black)),)),
                      )),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: height/18,
                width: width/1.2,
                decoration: BoxDecoration(
                  color: CupertinoColors.activeBlue,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(child: Text("Total Covers",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white)),)),
              ),
              SizedBox(height: 100,)

            ],
          ),
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);

  final String x;
  final double y;
  final Color color;
}

