import 'package:flutter/material.dart';

class DropDownMenu extends StatefulWidget {
  List<String> opcs;
  DropDownMenu(List opcs) {
    print(opcs);
    this.opcs = opcs;
    print(opcs);
  }
  @override
  _DropDownMenu createState() => new _DropDownMenu(opcs);
}

class _DropDownMenu extends State<DropDownMenu> {
  List<String> opcs;
  String _currentOpc;

  _DropDownMenu(this.opcs);

  @override
  void initState() {
    _currentOpc = opcs[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new DropdownButton<String>(
      value: _currentOpc,
      items: opcs.map((String value) {
        return new DropdownMenuItem<String>(
          value: value,
          child: new Text(value),
        );
      }).toList(),
      onChanged: (e) {
        setState(() {
          _currentOpc = e;
          print('Ahora es $e');
        });
      },
    );
  }

  void changedDropDownItem(String selectedCity) {
    setState(() {
      _currentOpc = selectedCity;
    });
  }
}
