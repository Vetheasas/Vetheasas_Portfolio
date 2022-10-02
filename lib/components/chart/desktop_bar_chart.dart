import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

// import 'package:flutter_chart_demo/data/price_point.dart';

class BarChartWidget extends StatefulWidget {
  const BarChartWidget({Key? key, required this.points}) : super(key: key);

  final List points;

  @override
  State<BarChartWidget> createState() =>
      _BarChartWidgetState(points: this.points);
}

class _BarChartWidgetState extends State<BarChartWidget> {
  final List points;
  final _barsGradient = const LinearGradient(
    colors: [Colors.white, Color(0xFF2c4086), Colors.lightBlueAccent],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );
  _BarChartWidgetState({required this.points});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      width: 600,
      child: AspectRatio(
        aspectRatio: 2,
        child: BarChart(
          BarChartData(
            alignment: BarChartAlignment.spaceEvenly,
            barGroups: [
              BarChartGroupData(
                x: 0,
                barRods: [
                  BarChartRodData(
                      toY: 90,
                      gradient: _barsGradient,
                      width: 50,
                      borderRadius: BorderRadius.zero),
                ],
                showingTooltipIndicators: [0],
              ),
              BarChartGroupData(
                x: 1,
                barRods: [
                  BarChartRodData(
                      gradient: _barsGradient,
                      toY: 75,
                      width: 50,
                      borderRadius: BorderRadius.zero
                      // gradient: _barsGradient,
                      )
                ],
                showingTooltipIndicators: [0],
              ),
              BarChartGroupData(
                x: 2,
                barRods: [
                  BarChartRodData(
                      gradient: _barsGradient,
                      toY: 60,
                      width: 50,
                      borderRadius: BorderRadius.zero
                      // gradient: _barsGradient,
                      )
                ],
                showingTooltipIndicators: [0],
              ),
              BarChartGroupData(
                x: 3,
                barRods: [
                  BarChartRodData(
                      gradient: _barsGradient,
                      toY: 60,
                      width: 50,
                      borderRadius: BorderRadius.zero
                      // gradient: _barsGradient,
                      )
                ],
                showingTooltipIndicators: [0],
              ),
            ],
            borderData: FlBorderData(
                show: false,
                border: const Border(bottom: BorderSide(), left: BorderSide())),
            gridData: FlGridData(show: false),
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(sideTitles: _bottomTitles),
              leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles:
                  AxisTitles(sideTitles: SideTitles(showTitles: false)),
            ),
          ),
        ),
      ),
    );
  }

  SideTitles get _bottomTitles => SideTitles(
        showTitles: true,
        getTitlesWidget: (value, meta) {
          String text = '';
          switch (value.toInt()) {
            case 0:
              text = 'Flutter';
              break;
            case 1:
              text = 'Data Structure';
              break;
            case 2:
              text = 'PhotoShop';
              break;
            case 3:
              text = 'PostgresSQL';
              break;
          }

          return Text(text);
        },
      );
}
