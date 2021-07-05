import 'package:flutter/material.dart';
import 'package:gezegenler/gezegen_anasayfa.dart';
import 'package:gezegenler/gezegen_liste.dart';

class GezegenFooter extends StatefulWidget {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  _GezegenFooterState createState() => _GezegenFooterState();
}

class _GezegenFooterState extends State<GezegenFooter> {
  int selectedIndex = 0;
  List<Widget> pageList = [
    GezegenAnasayfa(),
    GezegenListe(),
  ];
  @override
  Widget build(BuildContext context) {
    Color customcolor = Color(0xFFfed652);
    // TODO: implement build
    return Scaffold(
      body: pageList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Planets"),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.red.shade700,
        backgroundColor: customcolor,
        onTap: (value)  {
          setState(() {
            selectedIndex = value;
          });
        },
      ),
    );
  }
}
