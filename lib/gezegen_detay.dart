import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planets/gezegen.dart';
import 'package:planets/gezegen_liste.dart';

class GezegenDetay extends StatefulWidget {
  final int gelenIndex;
  GezegenDetay(this.gelenIndex);
  @override
  _GezegenDetayState createState() => _GezegenDetayState();
}

class _GezegenDetayState extends State<GezegenDetay> {
  Gezegen secilenGezegen;
  Color customcolor = Color(0xFF66FCF1);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    secilenGezegen = GezegenListe.tumGezegenler[widget.gelenIndex];
    return Scaffold(
      body: CustomScrollView(
        primary: true,
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            primary: true,
            backgroundColor: Colors.black,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(secilenGezegen.gezegenAdi + " Gezegen'nin Özellikleri",style: TextStyle(fontSize: 14,color: customcolor),),
              background: Image.asset(
                "images/" +  secilenGezegen.gezegenResim,
                fit: BoxFit.cover,
              ),
              centerTitle: true,
            ),
          ),

          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Text(
                  secilenGezegen.gezegenDetay,
                  style: TextStyle(fontSize: 18,color: Colors.black
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
