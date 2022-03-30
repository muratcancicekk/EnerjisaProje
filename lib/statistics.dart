import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Statistics extends StatefulWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SfRadialGauge(
              enableLoadingAnimation: true,
              axes: [
                RadialAxis(
                  showLabels: false,
                  pointers: [
                    MarkerPointer(
                      value: 289,
                      markerHeight: 20,
                      markerWidth: 20,
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
