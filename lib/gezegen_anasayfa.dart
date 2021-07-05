import 'package:flutter/material.dart';

class GezegenAnasayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Planets",
        )),
        backgroundColor: Colors.red.shade700,
      ),
      body: Column(
        children: [
          Container(
            height: 606,
            alignment: Alignment.center, // This is needed
            child: Image.asset(
              "images/homepageback.jpg",
              fit: BoxFit.cover,
              width: 395,
            ),
          ),
        ],
      ),
    );
  }
}
