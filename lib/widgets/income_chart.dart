import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1 ;
  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()));
  }

  PieChartData getChartData(){
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        touchCallback: (p0, pietouchResponse){
          
          activeIndex = pietouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {
            
          });
        },
        enabled: true),
      sections: [
        PieChartSectionData(
          showTitle: false,
          radius: activeIndex == 0 ? 60 : 50,
          value: 40,
          color: Color(0xFF2088C7),
        ),
        PieChartSectionData(
          radius: activeIndex == 1 ? 60 : 50,
          showTitle: false,
          value: 25,
          color: Color(0xFF4DB7F2),
        ),
        PieChartSectionData(
          radius: activeIndex == 2 ? 60 : 50,
          showTitle: false,
          value: 20,
          color: Color(0xFF064060),
        ),

        PieChartSectionData(
          radius: activeIndex == 3 ? 60 : 50,
          showTitle: false,
          value: 22,
          color: Color(0xFFE2DECD),
        ),
      ]
    );
  }
}