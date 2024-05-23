import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeChartIndex = -1;

  changeActiveChartIndex(int index) {
    setState(() {
      activeChartIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: PieChart(getChartData()),
        ));
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
            title: activeChartIndex == 0 ? "Design Services" : "40%",
            radius: activeChartIndex == 0 ? 50 : 40,
            color: const Color(0XFF2088C7),
            titlePositionPercentageOffset: activeChartIndex == 0 ? 1.5 : null,
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: activeChartIndex == 0 ? null : Colors.white),
          ),
          PieChartSectionData(
            value: 25,
            title: activeChartIndex == 1 ? "Design Product" : "25%",
            radius: activeChartIndex == 1 ? 50 : 40,
            color: const Color(0XFF4DB7F2),
            titlePositionPercentageOffset: activeChartIndex == 1 ? 2.4 : null,
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: activeChartIndex == 1 ? null : Colors.white),
          ),
          PieChartSectionData(
            value: 20,
            title: activeChartIndex == 2 ? "Product royalti" : "20%",
            radius: activeChartIndex == 2 ? 50 : 40,
            color: const Color(0XFF064060),
            titlePositionPercentageOffset: activeChartIndex == 2 ? 1.4 : null,
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: activeChartIndex == 2 ? null : Colors.white),
          ),
          PieChartSectionData(
            value: 22,
            title: activeChartIndex == 3 ? "Other" : "22%",
            radius: activeChartIndex == 3 ? 50 : 40,
            color: const Color(0XFFE2DECD),
            titlePositionPercentageOffset: activeChartIndex == 3 ? 1.5 : null,
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: activeChartIndex == 3 ? null : Colors.white),
          ),
        ]);
  }
}
