import 'package:flutter/material.dart';
import 'package:gezegenler/gezegen_footer.dart';
import 'package:gezegenler/gezegen_detay.dart';
import 'package:gezegenler/gezegen_liste.dart';

import 'gezegen_anasayfa.dart';

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
        "/" : (context) => GezegenFooter(),
        "/gezegenListesi" : (context) => GezegenListe(),
      },
      onGenerateRoute: (RouteSettings settings){
        List<String> pathElemanlari = settings.name.split("/"); // / gezegenDetay /  1
        if(pathElemanlari[1] == 'gezegenDetay'){
          return MaterialPageRoute(builder: (context) => GezegenDetay(int.parse(pathElemanlari[2])));
        }
        else{

          return MaterialPageRoute(builder: (context) => GezegenAnasayfa());
        }
      },
      title: "Gezegen Rehberi",
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
