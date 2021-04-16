import 'package:flutter/material.dart';

class DropDownMenu extends StatefulWidget {
  late List opcs;
  DropDownMenu(List opcs) {
    this.opcs = opcs;
    print(opcs);
  }
  @override
  _DropDownMenu createState() => new _DropDownMenu(opcs);
}

class _DropDownMenu extends State<DropDownMenu> {
  late List opcs;
  late List<DropdownMenuItem<String>> _dropDownMenuItems;
  String? _currentOpc;

  _DropDownMenu(this.opcs);

  @override
  void initState() {
    _currentOpc = opcs[0];
    _dropDownMenuItems = getDropDownMenuItems();
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = [];
    for (String city in opcs) {
      items.add(new DropdownMenuItem(value: city, child: new Text(city)));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return new DropdownButton(
      value: _currentOpc,
      items: _dropDownMenuItems,
      //onChanged: changedDropDownItem,
    );
  }

  void changedDropDownItem(String selectedCity) {
    setState(() {
      _currentOpc = selectedCity;
    });
  }
}
