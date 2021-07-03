import 'package:flutter/material.dart';
import 'package:gezegenler/gezegen.dart';
import 'package:gezegenler/information/String.dart';

class Gezegen_liste extends StatelessWidget{
  static List<Gezegen> tumGezegenler;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    tumGezegenler = veriKaynaginiHazirla();
    return Scaffold(
      appBar: AppBar(
        title: Text("Gezegenler"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: ListeyiHazirla(),
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
  // List<Gezegen> veriKaynaginiHazirla() {
  //   List<Gezegen> gezegenler = [];
  //   for(int i = 0; i <= 7;i++){
  //     String resim = Strings.GEZEGEN_ADLARI[i].toLowerCase() + ".jpg";
  //     Gezegen eklenecekListe = Gezegen(
  //         Strings.GEZEGEN_ADLARI[i],
  //         Strings.GEZEGENLER_GENEL_OZELLIKLERI[i],
  //         resim
  //     );
  //     gezegenler.add(eklenecekListe);
  //     print(eklenecekListe.gezegenAdi);
  //   }
  //   return gezegenler;
  // }
  Widget ListeyiHazirla() {
    return ListView.builder(itemBuilder:
        (BuildContext context, int index){
      return teksatirGezegenler(context,index);
    },
      itemCount: tumGezegenler.length,
    );
  }

  teksatirGezegenler(BuildContext context, int index) {
    Gezegen oankigezegen = tumGezegenler[index];
    return Card(
      elevation: 5,
      child: ListTile(
        onTap: () => Navigator.pushNamed(context, '/gezegenDetay/$index'),
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(oankigezegen.gezegenAdi),
          ),
        leading: Image.asset("images/" + oankigezegen.kucukResim,
        width: 64, height: 64,
        ),
        subtitle: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Detaylı Bilgi için Tıklayın."),
        ),
        trailing: Icon(Icons.arrow_forward_ios,color: Colors.pink,),
      ),
    );
  }



}