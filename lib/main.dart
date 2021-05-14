import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void Launch(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: new Color(0xFF5D4037),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('images/IMAGE.jpg'),
                ),
                Text(
                  'Utkarsh Singh',
                  style: TextStyle(
                    fontSize: 40,
                    color: new Color(0xFFFFFFFF),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Anton',
                  ),
                ),
                Text(
                  'FULL STACK WEB & FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontSize: 20,
                    color: new Color(0xFFD7CCC8),
                    fontFamily: 'ShareTechMono',
                  ),
                ),
                Card(
                  color: new Color(0xFFFFFFFF),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Row(
                    children: [
                      Icon(
                        Icons.call,
                        color: new Color(0xFF757575),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TextButton(
                          onPressed: () {
                            Launch('tel: +1 803 403 7070');
                          },
                          child: Text(
                            '(803) 403-7070',
                            style: TextStyle(
                              color: new Color(0xFF757575),
                              fontFamily: 'ShareTechMono',
                              fontSize: 15,
                            ),
                          ))
                    ],
                  ),
                ),
                Card(
                  color: new Color(0xFFFFFFFF),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Row(
                    children: [
                      Icon(
                        Icons.public,
                        color: new Color(0xFF757575),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TextButton(
                          onPressed: () {
                            Launch('https://www.utsingh.com/');
                          },
                          child: Text(
                            'https://www.utsingh.com/',
                            style: TextStyle(
                              color: new Color(0xFF757575),
                              fontFamily: 'ShareTechMono',
                              fontSize: 15,
                            ),
                          ))
                    ],
                  ),
                ),
                Card(
                  color: new Color(0xFFFFFFFF),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.github,
                        color: new Color(0xFF757575),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TextButton(
                          onPressed: () {
                            Launch('https://github.com/UT07');
                          },
                          child: Text(
                            'UT07',
                            style: TextStyle(
                              color: new Color(0xFF757575),
                              fontFamily: 'ShareTechMono',
                              fontSize: 15,
                            ),
                          ))
                    ],
                  ),
                ),
                Card(
                  color: new Color(0xFFFFFFFF),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.linkedin,
                        color: new Color(0xFF757575),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TextButton(
                          onPressed: () {
                            Launch(
                                'https://www.linkedin.com/in/utkarshsingh2001/');
                          },
                          child: Text(
                            'Utkarsh Singh',
                            style: TextStyle(
                              color: new Color(0xFF757575),
                              fontFamily: 'ShareTechMono',
                              fontSize: 15,
                            ),
                          ))
                    ],
                  ),
                ),
                Card(
                  color: new Color(0xFFFFFFFF),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: new Color(0xFF757575),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TextButton(
                          onPressed: () {
                            Launch(
                                'mailto:254utkarsh@gmail.com?subject=Greetings%20&body=Hello%20');
                          },
                          child: Text(
                            '254utkarsh@gmail.com',
                            style: TextStyle(
                              color: new Color(0xFF757575),
                              fontFamily: 'ShareTechMono',
                              fontSize: 15,
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
