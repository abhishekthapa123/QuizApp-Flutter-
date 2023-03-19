import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:quizapp/views/subject_list.dart';

class QuizResult extends StatelessWidget {
  double total_wrong;
  double total_right;
   
// double total_right??=2.0;
 // ignore: non_constant_identifier_names

 QuizResult({Key? key,required this.total_right, required this.total_wrong}) : super(key: key);
// static double right = total_right?.toDouble(); 



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Quiz Result'),
      automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Column(

          children: [
            SizedBox(height:10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                 Text("Total Right:"),
                 Container(
                  height:15.0,
                  width:15.0,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue
                  ),
                 ),
                 Text("Total Wrong:"),
                Container(
                  height:15.0,
                  width: 15.0,
                  decoration: BoxDecoration(
                    color: Colors.redAccent
                  ),
                )
              ],
            ),
           
            SizedBox(height:10.0),
            Center(
              child:PieChart(
                dataMap: {"total_wrong":total_wrong, "total_right":total_right},
                animationDuration: Duration(milliseconds: 2000),
                chartLegendSpacing: 32,
                chartRadius:900,
                centerText: "RESULT",
                legendOptions: LegendOptions(
                  showLegends: false,
                  showLegendsInRow: false,

                ),
                chartValuesOptions: ChartValuesOptions(
                  showChartValueBackground: true,
                  showChartValues: true,
                  decimalPlaces: 0,
                ),
              )

            ),
            ElevatedButton(
              style:ElevatedButton.styleFrom(
                primary: Colors.green
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SubjectListScreen()));
            }, child: Text('Main Menu'))
          ],
          
        ),
      ),
    );
  }
}