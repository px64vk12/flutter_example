import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class ChartExample extends StatefulWidget {
  const ChartExample({super.key, required this.title});
  final String title;
  @override
  State<ChartExample> createState() => _ChartExampleState();
}
// https://pub.dev/packages/syncfusion_flutter_charts
//https://www.syncfusion.com/flutter-widgets/flutter-charts/chart-types/bar-chart?utm_source=pubdev&utm_medium=listing&utm_campaign=flutter-charts-pubdev

class _ChartExampleState extends State<ChartExample> {
  List<_ChartData> data = [
    _ChartData('Jan', 35),
    _ChartData('Feb', 28),
    _ChartData('Mar', 34),
    _ChartData('Apr', 32),
    _ChartData('May', 40)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Syncfusion Flutter chart'),
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                primaryYAxis:
                    NumericAxis(minimum: 0, maximum: 40, interval: 10),
                title: ChartTitle(text: 'Half yearly sales analysis'),
                legend: Legend(isVisible: true),
                tooltipBehavior: TooltipBehavior(enable: true),
                series: <ChartSeries<_ChartData, String>>[
                  AreaSeries<_ChartData, String>(
                      dataSource: data,
                      xValueMapper: (_ChartData data, _) => data.x,
                      yValueMapper: (_ChartData data, _) => data.y,
                      name: 'Gold',
                      color: Color.fromRGBO(8, 142, 255, 1))
                ]),
          ),
        ]));
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}
