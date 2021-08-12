import 'country.dart';
import 'problem.dart';

class City extends Country with Problems {
  City() : super("วอชิงตัน ดี.ซี.", "นกอินทรี");

  void callSuper() {
    print("เมืองหลวง : " + super.city);
    super.callHello();
  }

  @override
  String callAnime() => "นกอินทรี";
}

