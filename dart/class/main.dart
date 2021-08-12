import 'city.dart';
//import 'country.dart';

void main() {
  print("Hello World");
/*
  Country item = Country.USA("วอชิงตัน ดี.ซี.", "นกอินทรี");
  print("Welcome to " + item.country);
  print(item.callHello());
  print("เมืองหลวง : " + item.city);
  print("อนิเมะแห่งปี : " + item.callAnime());

  print("สีประจำชาติ : " + Country.color);
  */

  var order = City();
  print("Welcome to " + order.country);
  order.callSuper();

  print(order.callAnime());
  order.callProblem();
}