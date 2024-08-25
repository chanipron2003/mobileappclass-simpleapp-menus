import 'package:flutter/material.dart';

class Menus extends StatefulWidget {
  const Menus({super.key});

  @override
  State<Menus> createState() => MenusState();

}

class MenusState extends State<Menus> {
  List<String> items = <String>[
    "Padkrapao",
    "TomYumKung",
    "Phanang Kai",
    "Green Curry",
    "Meat Ball",
    "Papaya Salad",
    "Fried Rice",
    "Khao Soi",
    "Noodle Soup",
    "Orange Curry"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
            title: Text('${items[index]}'),
            onLongPress: () {
              setState(() {
                items.removeAt(index);
              });
            });
      },
    );
  }
}
