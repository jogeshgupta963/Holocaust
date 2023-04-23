import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kavach/constants/colors.dart';

class _LineChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LineChart(
      sampleData1,
    );
  }

  LineChartData get sampleData1 => LineChartData(
        lineTouchData: lineTouchData,
        gridData: gridData,
        titlesData: titlesData1,
        borderData: borderData,
        lineBarsData: lineBarsData1,
        minX: 0,
        maxX: 13,
        maxY: 4,
        minY: 0,
      );

  LineTouchData get lineTouchData => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.blueGrey.withOpacity(0.5),
        ),
      );

  FlTitlesData get titlesData1 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitles(),
        ),
      );

  List<LineChartBarData> get lineBarsData1 => [
        lineChartBarData1_1,
        lineChartBarData1_2,
      ];

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = '0';
        break;
      case 1:
        text = '1m';
        break;
      case 2:
        text = '2m';
        break;
      case 3:
        text = '3m';

        break;
      case 4:
        text = '4m';
        break;

      default:
        return Container();
    }

    return Text(
      text,
      style: style,
      textAlign: TextAlign.center,
    );
  }

  SideTitles leftTitles() => SideTitles(
        getTitlesWidget: leftTitleWidgets,
        showTitles: true,
        interval: 1,
        reservedSize: 40,
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    var style = GoogleFonts.poppins(
      fontWeight: FontWeight.normal,
      fontSize: 10,
    );
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = Text('Feb 10', style: style);
        break;
      case 3:
        text = Text('Feb 10', style: style);
        break;
      case 5:
        text = Text('Feb 11', style: style);
        break;
      case 7:
        text = Text('Feb 12', style: style);
        break;
      case 9:
        text = Text('Feb 13', style: style);
        break;
      case 11:
        text = Text('Feb 13', style: style);
        break;
      case 13:
        text = Text('Feb 13', style: style);
        break;
      default:
        text = const Text('');
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: text,
    );
  }

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 32,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  FlGridData get gridData => FlGridData(
        show: true,
        horizontalInterval: 1,
        drawVerticalLine: false,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: Colors.grey,
            strokeWidth: 1,
          );
        },
      );

  FlBorderData get borderData => FlBorderData(
        show: true,
        border: Border(
          bottom: BorderSide(color: primaryColor.withOpacity(0.2), width: 4),
          left: const BorderSide(color: Colors.transparent),
          right: const BorderSide(color: Colors.transparent),
          top: const BorderSide(color: Colors.transparent),
        ),
      );

  LineChartBarData get lineChartBarData1_1 => LineChartBarData(
        isCurved: true,
        color: primaryColor,
        barWidth: 4,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(
            1,
            1,
          ),
          FlSpot(3, 1.5),
          FlSpot(5, 1.4),
          FlSpot(7, 3.4),
          FlSpot(9, 2),
          FlSpot(11, 2.2),
          FlSpot(13, 1.8),
        ],
      );

  LineChartBarData get lineChartBarData1_2 => LineChartBarData(
        isCurved: true,
        color: Colors.black,
        barWidth: 4,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(
          show: false,
          color: Colors.black.withOpacity(0.5),
        ),
        spots: const [
          FlSpot(1, 1),
          FlSpot(3, 2.8),
          FlSpot(5, 2.2),
          FlSpot(7, 2),
          FlSpot(9, 2.6),
          FlSpot(11, 3.9),
          FlSpot(13, 3),
        ],
      );
}

class SpamChart extends StatefulWidget {
  const SpamChart({super.key});

  @override
  State<StatefulWidget> createState() => _SpamChartState();
}

class _SpamChartState extends State<SpamChart> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(
            height: 37,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Daily\nSpam Reported',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.2,
                  height: 1,
                ),
                textAlign: TextAlign.start,
              ),
              FittedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Last 7 days VS prior week',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 0.2,
                        height: 1,
                      ),
                      textAlign: TextAlign.end,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '+22%',
                      style: GoogleFonts.poppins(
                        color: Colors.blue,
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 0.2,
                        height: 1,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 37,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 16, left: 6),
              child: _LineChart(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
