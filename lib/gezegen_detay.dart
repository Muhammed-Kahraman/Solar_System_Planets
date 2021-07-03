import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gezegenler/gezegen.dart';
import 'package:gezegenler/gezegen_liste.dart';

class Gezegen_detay extends StatefulWidget {
  int gelenIndex;
  Gezegen_detay(this.gelenIndex);

  @override
  _Gezegen_detay_state createState() => _Gezegen_detay_state();
}

class _Gezegen_detay_state extends State<Gezegen_detay> {
  Gezegen secilenGezegen;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    secilenGezegen = Gezegen_liste.tumGezegenler[widget.gelenIndex];
    return Scaffold(
      body: CustomScrollView(
        primary: true,
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            primary: true,
            backgroundColor: Colors.pinkAccent,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(secilenGezegen.gezegenAdi + " Gezegen Özellikleri"),
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
                  style: TextStyle(fontSize: 18,color: Colors.black,
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
