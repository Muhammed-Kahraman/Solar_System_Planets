import 'package:flutter/material.dart';
import 'package:gezegenler/gezegen.dart';
import 'package:gezegenler/information/String.dart';

class GezegenListe extends StatelessWidget{
  final Color customcolor = Color(0xFF747474);
  static List<Gezegen> tumGezegenler;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    tumGezegenler = veriKaynaginiHazirla();
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
              "Planets",
            )),
        backgroundColor: Colors.red.shade700,
      ),
      body: Container(child: listeyihazirla(),color: Colors.white,),
    );
  }
  List<Gezegen> veriKaynaginiHazirla() {
    List<Gezegen> gezegenler = [];
    for (int i = 0; i <= 7; i++) {
      String resim = Strings.GEZEGEN_ADLARI[i].toLowerCase() + ".jpg";
      String kucukResim = Strings.GEZEGEN_ADLARI[i].toLowerCase() + "kucuk" + ".jpg";
      Gezegen eklenecekListe = Gezegen(
          Strings.GEZEGEN_ADLARI[i],
          Strings.GEZEGENLER_GENEL_OZELLIKLERI[i],
          resim,
          kucukResim
      );
      gezegenler.add(eklenecekListe);
    }
    return gezegenler;
  }

  static Widget listeyihazirla() {
    return ListView.builder(itemBuilder:
        (BuildContext context, int index){
      return teksatirGezegenler(context,index);
    },
      itemCount: tumGezegenler.length,
    );
  }

  static teksatirGezegenler(BuildContext context, int index) {
    Gezegen oankigezegen = tumGezegenler[index];
    return Card(
      color: Colors.white,
      elevation: 20,
      child: ListTile(
        onTap: () => Navigator.pushNamed(context, '/gezegenDetay/$index'),
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(oankigezegen.gezegenAdi,style: TextStyle(color: Colors.black),),
          ),
        leading: Image.asset("images/" + oankigezegen.kucukResim,
        width: 64, height: 64,
        ),
        subtitle: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Click For Detailed Information.",style: TextStyle(color: Colors.black),),
        ),
        trailing: Icon(Icons.arrow_forward_ios,color: Colors.pink,),
      ),
    );
  }



}