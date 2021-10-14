import 'package:flutter/material.dart';
import 'package:mobileappweek1/config/constant.dart';
import 'package:mobileappweek1/screen/dasboard.dart';
import 'package:mobileappweek1/screen/login.dart';
import 'package:mobileappweek1/screen/packageImage.dart';
import 'package:mobileappweek1/screen/packageLocation.dart';
import 'package:mobileappweek1/screen/packageVideo.dart';
import 'package:mobileappweek1/screen/register.dart';
import 'screen/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Index(),
      routes: {
        'Login': (context) => Login(),
        'Register': (context) => Register(),
        'Dashboard': (context) => Dashboard(),
        'Video' : (context) => PackageVideo(),
        'Location' : (context) => PackageLocation(),
        'Image' : (context) => PackageImage(),
      },
      theme: ThemeData(
        primaryColor: sColor,
        secondaryHeaderColor: sColor,
      ),
    );
  }
}
