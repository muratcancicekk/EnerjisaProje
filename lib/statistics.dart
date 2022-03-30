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
<<<<<<< Updated upstream
                  showLabels: false,
                  pointers: [
=======
                  showLabels: true,
                  maximum: 500,
                  maximumLabels: 8,
                  pointers: const [
>>>>>>> Stashed changes
                    MarkerPointer(
                      value: 289,
                      markerHeight: 20,
                      markerWidth: 20,
                    )
                  ],
                )
              ],
<<<<<<< Updated upstream
            )
=======
            ),
            Text(
              "Usage",
              style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height * 0.035,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.05,
            ),
            Container(
              color: const Color.fromARGB(255, 178, 240, 195),
              height: MediaQuery.of(context).size.width * 0.15,
              width: MediaQuery.of(context).size.width * 0.75,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.02,
                ),
                child: Text("289.6 KW",
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: MediaQuery.of(context).size.height * 0.025,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.05,
            ),
            Text(
              "Equivalent",
              style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height * 0.035,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.05,
            ),
            Container(
              color: Colors.red.shade100,
              height: MediaQuery.of(context).size.width * 0.15,
              width: MediaQuery.of(context).size.width * 0.75,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.02,
                ),
                child: Text("Above Average",
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: MediaQuery.of(context).size.height * 0.025,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
              ),
            ),
>>>>>>> Stashed changes
          ],
        ),
      ),
    );
  }
}
