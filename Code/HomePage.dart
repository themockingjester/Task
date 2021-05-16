import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'VideoPage.dart';
import 'NewsTiles.dart';
import 'ProfilePage.dart';
class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,




        toolbarHeight: 70,
      ),
      drawer: Drawer(

        child:Column(
          children: [
            Container(
              width:double.infinity,
              height: 200,
              color: Colors.green.shade900,
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 40),
              title: Text('Home',
                textAlign: TextAlign.start,
              ),
              onTap: () {

                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Home()));
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 0),
              child: Divider(
                thickness: 0.5,
                color: Colors.grey,

              ),
            ),
            ListTile(
              title: Text('Videos',
                textAlign: TextAlign.start,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 40),

              onTap: () {

                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => VideoPage()));
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 0),
              child: Divider(
                thickness: 0.5,
                color: Colors.grey,

              ),
            ),
            ListTile(
              title: Text('Profile',
                textAlign: TextAlign.start,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 40),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Profile()));

              },
            ),
          ],
        )
      ),
      body: ListView(
        children: [
          Column(

            children: [

              NewsTile(),
              NewsTile(),
              NewsTile(),
              NewsTile(),
              NewsTile(),
              NewsTile(),





            ],


          ),
        ]
      ),
    );
  }
}

