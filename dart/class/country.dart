class Country {
  var country = "สหรัฐอเมริกา";
  var city;
  var _anime = "งู";
  static var color = "RED";

  Country(this.city, this._anime);

  Country.japan(String city, String anime)
      : this(city, anime); 

  void callHello() {
    print("สวัสดีจ้า");
  }

  String callAnime() => this._anime;
}