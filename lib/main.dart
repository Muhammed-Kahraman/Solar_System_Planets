import 'package:flutter/material.dart';
import 'package:gezegenler/gezegen_detay.dart';
import 'package:gezegenler/gezegen_liste.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.pinkAccent,
      routes: {
        "/" : (context) => Gezegen_liste(),
        "/gezegenListesi" : (context) => Gezegen_liste(),
      },
      onGenerateRoute: (RouteSettings settings){
        List<String> pathElemanlari = settings.name.split("/"); // / gezegenDetay /  1
        if(pathElemanlari[1] == 'gezegenDetay'){
          return MaterialPageRoute(builder: (context) => Gezegen_detay(int.parse(pathElemanlari[2])));
        }
        else{
          return null;
        }
      },
      title: "Gezegen Rehberi",
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    );
  }
}
