import 'dart:ui';
import 'HomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'NewsTiles.dart';
import 'VideoItem.dart';
import 'ProfilePage.dart';
class VideoPage extends StatefulWidget {


  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {



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
                children:[
                  Padding(

                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                      child: Text(
                        'Videos',


                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      ),


                    ),

                  ),
                  VideoItem(),
                  Container(
                    width: 400,
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                    child: Column(


                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'This is the heading of realte news this is and',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,

                            color: Colors.black87,
                          ),
                          textAlign: TextAlign.justify,

                        ),
                        Text(
                          'Date & Time here',


                          style: TextStyle(
                            fontSize: 12,


                            fontWeight: FontWeight.w100,

                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.justify,

                        ),
                        SizedBox(height: 10,),
                        Text(
                          'This is the heading of realte news this is this isthe another heading of this will go like this',

                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w100,

                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.justify,
                        ),


                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                    child: ElevatedButton(

                        child: Text(
                            "Information",
                          style: TextStyle(
                            color: Colors.black87
                          ),

                        ),
                        onPressed: (){

                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 10,
                            primary: Colors.grey.shade300, // background
                            onPrimary: Colors.white, // foreground

                            minimumSize: Size(double.infinity,50)
                        )
                    ),

                  ),
                  SizedBox(
                    height: 30,
                  ),
                  NewsTile(),
                  NewsTile()

                ]

            ),
          ],
        )
    );
  }
}
