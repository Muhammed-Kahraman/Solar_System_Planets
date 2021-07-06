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
      body: Container(
        alignment: Alignment.center, // This is needed
        decoration: new BoxDecoration(
            color: Colors.red,
            image: new DecorationImage(
                fit: BoxFit.cover,
                image: new AssetImage(
                    'images/homepageback.jpg'))),
        ),
    );
  }
}
