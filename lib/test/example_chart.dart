import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartExample extends StatefulWidget {
  const ChartExample({super.key, required this.title});
  final String title;
  @override
  State<ChartExample> createState() => _ChartExampleState();
}
// https://pub.dev/packages/syncfusion_flutter_charts
//https://www.syncfusion.com/flutter-widgets/flutter-charts/chart-types/bar-chart?utm_source=pubdev&utm_medium=listing&utm_campaign=flutter-charts-pubdev

class _ChartExampleState extends State<ChartExample> {
  List<ChartData> chartData = [
    ChartData('Germany', 128, 129, 101),
    ChartData('Russia', 123, 92, 93),
    ChartData('Norway', 107, 106, 90),
    ChartData('USA', 87, 95, 71),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Syncfusion Flutter chart'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
              child: Container(
                  height: 500,
                  child: SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      series: <CartesianSeries>[
                        ColumnSeries<ChartData, String>(
                            dataSource: chartData,
                            xValueMapper: (ChartData data, _) => data.x,
                            yValueMapper: (ChartData data, _) => data.y),
                        ColumnSeries<ChartData, String>(
                            dataSource: chartData,
                            xValueMapper: (ChartData data, _) => data.x,
                            yValueMapper: (ChartData data, _) => data.y1),
                        ColumnSeries<ChartData, String>(
                            dataSource: chartData,
                            xValueMapper: (ChartData data, _) => data.x,
                            yValueMapper: (ChartData data, _) => data.y2)
                      ]))),
        ));
  }
}

class ChartData {
  ChartData(this.x, this.y, this.y1, this.y2);

  final String x;
  final double y;
  final double? y1;
  final double? y2;
}
