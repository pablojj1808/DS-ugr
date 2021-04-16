import 'package:pie_chart/pie_chart.dart';
import 'package:flutter/material.dart';

class GastosWidget extends StatefulWidget {
  @override
  _GastosWidget createState() => _GastosWidget();
}

class _GastosWidget extends State<GastosWidget> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            width: MediaQuery.of(context).size.width,
            child: buildChart(context)),
        buildDots()
      ],
    ));
  }

  Container buildDots() {
    return Container(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //children: dotsList()),
      ),
    );
  }

  Widget buildChart(BuildContext context) {
    Map<String, double> dataMap = {
      "Flutter": 5,
      "React": 3,
      "Xamarin": 2,
      "Ionic": 2,
    };
    return Container(
      child: Center(
        child: PieChart(
            dataMap: dataMap,
            animationDuration: Duration(seconds: 8),
            chartLegendSpacing: 32,
            chartRadius: MediaQuery.of(context).size.width / 1.2,
            colorList: [Colors.red, Colors.blue],
            //chartType: ChartType.ring,
            ringStrokeWidth: 32,
            centerText: "HYBRID",
            legendOptions: LegendOptions(
              showLegendsInRow: false,
              legendPosition: LegendPosition.bottom,
              showLegends: true,
              legendShape: BoxShape.circle,
              legendTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            chartValuesOptions: ChartValuesOptions(
              showChartValueBackground: true,
              showChartValues: true,
              showChartValuesInPercentage: true,
              showChartValuesOutside: false,
              decimalPlaces: 1,
            ),
          ),
        ),
      );
  }
/*
  List<Widget> dotsList() {
    List<Widget> list = [];

    for (var item in []) {
      list.add(Container(
        child: Row(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  color: item.color, borderRadius: BorderRadius.circular(100)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              child: Text(item.title),
            )
          ],
        ),
      ));
    }

    return list;
  }*/
}
