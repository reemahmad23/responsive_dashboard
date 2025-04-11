import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<DetailedIncomeChart> {
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
        enabled: true
        ),
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 0 ? 1 : null ,
          title: activeIndex == 0 ? 'Design services' : '40%',
          titleStyle: AppStyle.styleMedium16(context).copyWith(color: activeIndex == 0 ? null : Colors.white),
          radius: activeIndex == 0 ? 60 : 50,
          value: 40,
          color: Color(0xFF20BBC7),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 1 : null ,
          titleStyle: AppStyle.styleMedium16(context).copyWith(color: activeIndex == 1 ? null : Colors.white),
          radius: activeIndex == 1 ? 60 : 50,
          //showTitle: false,
          value: 25,
          title: activeIndex == 1 ? 'Design Product' : '25%',
          color: Color(0xFF4DB7F2),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1 : null ,
          titleStyle: AppStyle.styleMedium16(context).copyWith(color: activeIndex == 2 ? null : Colors.white),
          radius: activeIndex == 2 ? 60 : 50,
          //showTitle: false,
          value: 20,
          title: activeIndex == 2 ? 'Product royalti' : '20%',
          color: Color(0xFF064060),
        ),

        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1 : null ,
          titleStyle: AppStyle.styleMedium16(context).copyWith(color: activeIndex == 3 ? null : Colors.white),
          radius: activeIndex == 3 ? 60 : 50,
          //showTitle: false,
          value: 22,
          title: activeIndex == 3 ? 'Other' : '22%',
          color: Color(0xFFE2DECD),
        ),
      ]
    );
  }
}