import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeChartIndex = -1;

  changeActiveChartIndex(int index) {
    setState(() {
      activeChartIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1,child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) => changeActiveChartIndex(
              pieTouchResponse!.touchedSection!.touchedSectionIndex),
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
              value: 40,
              radius: activeChartIndex == 0 ? 50 : 40,
              color: const Color(0XFF2088C7),
              showTitle: false),
          PieChartSectionData(
              value: 25,
              radius: activeChartIndex == 1 ? 50 : 40,
              color: const Color(0XFF4DB7F2),
              showTitle: false),
          PieChartSectionData(
              value: 20,
              radius: activeChartIndex == 2 ? 50 : 40,
              color: const Color(0XFF064060),
              showTitle: false),
          PieChartSectionData(
              value: 22,
              radius: activeChartIndex == 3 ? 50 : 40,
              color: const Color(0XFFE2DECD),
              showTitle: false),
        ]);
  }
}
