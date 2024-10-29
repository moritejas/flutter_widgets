import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartComponent extends StatelessWidget {
  const ChartComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LineChart(
          LineChartData(
            titlesData: const FlTitlesData(
              leftTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: true),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: true),
              ),
            ),
            borderData: FlBorderData(show: true),
            minX: 0,
            maxX: 6,
            minY: 0,
            maxY: 6,
            gridData: const FlGridData(show: true),
            lineBarsData: [
              LineChartBarData(
                spots: [
                  const FlSpot(0, 1),
                  const FlSpot(1, 3),
                  const FlSpot(2, 2),
                  const FlSpot(3, 5),
                  const FlSpot(4, 2),
                  const FlSpot(5, 4),
                ],
                isCurved: true,
                color: Colors.blue,
                barWidth: 4,
                belowBarData: BarAreaData(show: false),
                dotData: const FlDotData(show: true),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
