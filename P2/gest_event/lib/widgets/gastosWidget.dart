import 'package:pie_chart/pie_chart.dart';
import 'package:flutter/material.dart';

class GastosWidget extends StatefulWidget {
  @override
  _GastosWidget createState() => _GastosWidget();
}

class _GastosWidget extends State<GastosWidget>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                child: buildChart(context)),
            buildDots()
          ],
        ),
      ),
    );
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
      "Enero": 6,
      "Marzo": 2,
      "Julio": 2,
      "Agosto": 5,
    };
    return SingleChildScrollView(
      child: PieChart(
        dataMap: dataMap,
        animationDuration: Duration(seconds: 8),
        chartLegendSpacing: 32,
        chartRadius: MediaQuery.of(context).size.width / 1.2,
        colorList: [Colors.blue, Colors.red, Colors.green, Colors.orange],
        //chartType: ChartType.ring,
        ringStrokeWidth: 32,
        centerText: "Eventos visitados",
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
    );
  }
}
