import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mobileappweek1/config/constant.dart';
import 'package:mobileappweek1/model/tct.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var data;

  @override
  void initState() {
    super.initState();
    print("Hello");
    callAPI();
  }

  Future<void> callAPI() async {
    var url = Uri.parse("https://www.boredapi.com/api/activity");

    var response = await http.get(url);

    setState(() {
      data = tctFromJson(response.body);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: pColor,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Video',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Icon(
                Icons.video_call,
                color: Colors.pink,
                size: 35,
              ),
              onTap: () {
                print('Video');
                Navigator.pushNamed(context, 'Video');
              },
            ),
            ListTile(
              title: Text(
                'Image',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Icon(
                Icons.image,
                color: Colors.green,
                size: 30,
              ),
              onTap: () {
                print('Image');
                Navigator.pushNamed(context, 'Image');
              },
            ),
            ListTile(
              title: Text(
                'Location',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Icon(
                Icons.near_me,
                color: Colors.blue,
                size: 30,
              ),
              onTap: () {
                print('Location');
                Navigator.pushNamed(context, 'Location');
              },
            ),
          ],
        ),
      ),
        appBar: AppBar(
          title: Row(
            children: [
              Icon(Icons.api),
              SizedBox(width: 10),
              Text('Dashboard'),
            ],
          ),
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Image(
              image: NetworkImage
                ("https://static.thairath.co.th/media/dFQROr7oWzulq5FZYSpKeTpcLDqCSNMNXHAjxY7MdxdzmfUpOQpcXoEol8Q8HrMYUWR.jpg"),
              alignment: Alignment.center,
            ),
            Text(
              data?.activity ?? "loading..",
              style: TextStyle(
                color: Colors.amber[900],
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              data?.type ?? '',
              style: TextStyle(
                color: pColor,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${data?.price ?? ""}',
              style: TextStyle(
                color: Colors.amber[900],
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${data?.participants ?? ""}',
              style: TextStyle(
                color: Colors.amber[700],
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}