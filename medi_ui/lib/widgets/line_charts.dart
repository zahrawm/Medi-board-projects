import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LineChartSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LineChart(
          LineChartData(
            gridData: FlGridData(show: true),
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 30,
                  getTitlesWidget: (value, meta) {
                    switch (value.toInt()) {
                      case 0:
                        return Text('Jan');
                      case 2:
                        return Text('Mar');
                      case 4:
                        return Text('May');
                      case 6:
                        return Text('Jul');
                      case 8:
                        return Text('Sep');
                      case 10:
                        return Text('Nov');
                      default:
                        return Text('');
                    }
                  },
                ),
              ),
              rightTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              topTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
            ),
            borderData: FlBorderData(show: false),
            minX: 0,
            maxX: 11,
            minY: 0,
            maxY: 6,
            lineBarsData: [
              LineChartBarData(
                spots: [
                  FlSpot(0, 3),
                  FlSpot(2, 2),
                  FlSpot(4, 5),
                  FlSpot(6, 3.1),
                  FlSpot(8, 4),
                  FlSpot(10, 3),
                  FlSpot(11, 4),
                ],
                isCurved: false,
                gradient: LinearGradient(
                  colors: [
                    Colors.greenAccent,
                    Colors.greenAccent,
                    Colors.red,
                    Colors.greenAccent,
                    Colors.greenAccent,
                    Colors.red,
                    // Colors.red,
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                barWidth: 4,
                isStrokeCapRound: true,
                dotData: FlDotData(show: true),
                belowBarData: BarAreaData(show: false),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
