import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class NewsTile extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.all(10),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('images/news.png'),

          ),
          SizedBox(
            width: 15,
          ),
          Container(
            width: 230,
            child: Column(
              children: [
                Text(
                  'This is the heading of realte news this is and go on',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,

                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.justify,

                ),
                Text(
                  'This is the heading of realte news this is this isthe another heading of this will go like this',

                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w100,

                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      color: Colors.grey,
                      size: 12,

                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '11-12-21',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),

                    ),
                    SizedBox(
                      width: 5,
                    ),
                      Expanded(
                        child: ElevatedButton(

                        child: Text(
                        "Sports"
                        ),
                        onPressed: (){

                        },
                        style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrangeAccent, // background
                        onPrimary: Colors.white, // foreground
                          minimumSize: Size(10,5)
                        )
                        ),
                      ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.bookmark_border,
                      size: 17,
                    )


                  ],
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}
