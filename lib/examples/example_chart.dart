import 'package:flutter/material.dart';
import 'package:charts_painter/chart.dart';

class ChartExample extends StatefulWidget {
  const ChartExample({super.key, required this.title});
  final String title;
  @override
  State<ChartExample> createState() => _ChartExampleState();
}

class _ChartExampleState extends State<ChartExample> {
  @override
  Widget build(BuildContext context) {
    ChartData(
      [
        [2, 6, 8, 4, 6, 8].map((e) => ChartItem<void>(e.toDouble())).toList(),
        [3, 5, 2, 7, 0, 4].map((e) => ChartItem<void>(e.toDouble())).toList(),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text("Buttons")),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[],
          ),
        ),
      ),
    );
  }
}
