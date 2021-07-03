class Gezegen{
  String _gezegenAdi;
  String _gezegenDetay;
  String _gezegenResim;
  String _kucukResim;


  Gezegen(this._gezegenAdi,this._gezegenDetay,this._gezegenResim,this._kucukResim);

  String get kucukResim => _kucukResim;

  String get gezegenAdi => _gezegenAdi;

  String get gezegenDetay => _gezegenDetay;

  String get gezegenResim => _gezegenResim;

  set gezegenAdi(String value) {
    _gezegenAdi = value;
  }

  set gezegenResim(String value) {
    _gezegenResim = value;
  }

  set gezegenDetay(String value) {
    _gezegenDetay = value;
  }
  set kucukResim(String value) {
    _kucukResim = value;
  }
}