import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_app/themes/colors.dart';

LineChartData mainData() {
  return LineChartData(
    // Eje X
    minX: 0,
    maxX: 14,
    // Eje Y
    minY: 0,
    maxY: 4,
    // Atributos de la rejilla
    gridData: FlGridData(
      show: true,
      getDrawingHorizontalLine: (value) {
        return FlLine(
          color: const Color(0xff37434d),
          strokeWidth: 1,
        );
      },
      drawVerticalLine: true,
      getDrawingVerticalLine: (value) {
        return FlLine(
          color: const Color(0xff37434d),
          strokeWidth: 1,
        );
      },
    ),
    // Atributos de los ejes

    // Atributos de las curvas
    lineBarsData: [
      LineChartBarData(
        spots: const[
          FlSpot(0, 1),
          FlSpot(2.6, 2),
          FlSpot(4.9, 3),
          FlSpot(6.8, 2.5),
          FlSpot(8, 4),
          FlSpot(9.5, 3),
          FlSpot(11, 4),
        ],
        isCurved: true,
        color: primary,
        barWidth: 5,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: true,
        ),
      ),
    ],
    // Atributos de la leyenda
    lineTouchData: LineTouchData(
      enabled: true,
      touchTooltipData: LineTouchTooltipData(
        tooltipBgColor: Colors.blueAccent,
      ),
    ),
  );
}
