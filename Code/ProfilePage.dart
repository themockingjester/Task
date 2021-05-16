import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'VideoPage.dart';
import 'HomePage.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Profile extends StatelessWidget {
  PhoneNumber number = PhoneNumber(isoCode: 'IN');
  final TextEditingController controller = TextEditingController();

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
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
              ],
            )
        ),
        body: ListView(
          children: [
            Container(
              height:250,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  CircleAvatar(
                    child: Image(
                      image: AssetImage('images/man.png'),
                    ),
                    radius: 68,
                    backgroundColor: Colors.deepOrange,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Dinesh yaduvanshi',
                      style: TextStyle(
                          fontSize: 19,
                          color: Colors.deepOrange
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(

                        child: Text(
                          "Edit Profile",
                          style: TextStyle(
                              color: Colors.deepOrange
                          ),

                        ),

                        onPressed: (){

                        },
                        style: ElevatedButton.styleFrom(


                            primary: Colors.white, // background
                            onPrimary: Colors.white, // foreground

                            minimumSize: Size(50,30)
                        )
                    ),
                  ),

                ],
              ),
            ),
            Container(
              color: Colors.white60,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                    child: TextFormField(
                      decoration: InputDecoration(

                          border: UnderlineInputBorder(),




                          labelText: 'Location'

                      ),



                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Pincode'
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                    child: TextFormField(
                      decoration: InputDecoration(

                          border: UnderlineInputBorder(),
                          labelText: 'Date of Birth'

                      ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                    child: TextFormField(
                      decoration: InputDecoration(

                          border: UnderlineInputBorder(),
                          labelText: 'Gender'

                      ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                    child: InternationalPhoneNumberInput(
                      onInputChanged: (PhoneNumber number) {

                      },
                      onInputValidated: (bool value) {
                        print(value);
                      },
                      selectorConfig: SelectorConfig(
                        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                      ),
                      ignoreBlank: false,
                      hintText: 'Whatssapp',
                      autoValidateMode: AutovalidateMode.disabled,
                      selectorTextStyle: TextStyle(color: Colors.black),
                      initialValue: number,
                      textFieldController: controller,
                      formatInput: false,
                      keyboardType:
                      TextInputType.numberWithOptions(signed: true, decimal: true),
                      inputBorder: OutlineInputBorder(),

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                    child: TextFormField(
                      decoration: InputDecoration(

                          border: UnderlineInputBorder(),
                          labelText: 'Email'

                      ),

                    ),
                  ),
                ],
              ),
            )


      ],
        )
    );

  }
}
