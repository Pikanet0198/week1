import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          children: [
            Positioned(
              top: -20,
              left: -20,
              child: Image(
                image: NetworkImage(
                    "https://www.publicdomainpictures.net/pictures/310000/velka/orange-circle.png"),
                width: size.width * 0.25,
              ),
            ),
            Positioned(
              right: -20,
              bottom: -20,
              child: Image(
                image: NetworkImage(
                    "https://www.dishwasherhero.com/wp-content/uploads/2020/01/orange-circle-background.png"),
                width: size.width * 0.3,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                  width: size.width,
                ),
                 Image(
                  image: NetworkImage(
                      "https://s.isanook.com/ca/0/ud/185/926754/7437_20100917p1.jpg"),
                  width: size.width * 0.8,
                  height: size.height * 0.3,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Welcome to KMUTNB',
                  style: TextStyle(
                    color: Colors.amber[900],
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image(
                  image: NetworkImage(
                      "https://www.kmutnb.ac.th/getattachment/news/university-news/%E0%B8%AD%E0%B8%98%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B8%9A%E0%B8%94-%E0%B8%A1%E0%B8%88%E0%B8%9E-%E0%B8%A5%E0%B8%94%E0%B8%84%E0%B8%B2%E0%B9%80%E0%B8%97%E0%B8%AD%E0%B8%A1-%E0%B8%84%E0%B8%B2%E0%B8%AB%E0%B8%AD%E0%B8%9E%E0%B8%81-%E0%B9%81%E0%B8%A5%E0%B8%B0%E0%B8%88%E0%B8%94%E0%B8%95%E0%B8%87%E0%B8%81%E0%B8%AD%E0%B8%87%E0%B8%97%E0%B8%99/69830045_10157843841840139_853033144104779776_o.jpg.aspx"),
                  width: size.width * 0.8,
                  height: size.height * 0.3,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber[900],
                    padding: EdgeInsets.fromLTRB(120, 15, 120, 15),
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber[900],
                    padding: EdgeInsets.fromLTRB(110, 15, 110, 15),
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    'SIGNUP',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}