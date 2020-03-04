import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Apps extends StatefulWidget {
  @override
  _AppsState createState() => _AppsState();
}

class _AppsState extends State<Apps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50),
              child: Image(
                  width: 42,
                  height: 42,
                  image: AssetImage(
                      'Assets/Images/Icons/icons8-google-play-64.png')),
            ),
            Text('Apps',
                style: TextStyle(fontSize: 25, fontFamily: 'YeonSung-Regular')),
          ],
        ),
        titleSpacing: 2,
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.black54, Colors.black],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Card(
          color: Colors.white70,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
          elevation: 25,
          margin: EdgeInsets.all(25),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 250.0,
                  height: 60.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10)),
                    color: Colors.black54,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image(
                                width: 32,
                                height: 32,
                                image: AssetImage(
                                    'Assets/Images/Icons/icons8-google-play-64.png'))),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('Obenkyo',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'YeonSung-Regular')),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Load_URL(0);
                    },
                  ),
                ),
                Container(
                  width: 250.0,
                  height: 60.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10),
                    ),
                    color: Colors.black54,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              width: 32,
                              height: 32,
                              image: AssetImage(
                                  'Assets/Images/Icons/icons8-google-play-64.png')),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('Kana Master',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'YeonSung-Regular')),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Load_URL(1);
                    },
                  ),
                ),
                Container(
                  width: 250.0,
                  height: 60.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10),
                    ),
                    color: Colors.black54,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              width: 32,
                              height: 32,
                              image: AssetImage(
                                  'Assets/Images/Icons/icons8-google-play-64.png')),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('Duolingo',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'YeonSung-Regular')),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Load_URL(2);
                    },
                  ),
                ),
                Container(
                  width: 250.0,
                  height: 60.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10),
                    ),
                    color: Colors.black54,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              width: 32,
                              height: 32,
                              image: AssetImage(
                                  'Assets/Images/Icons/icons8-google-play-64.png')),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text('Katakana Pro',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'YeonSung-Regular')),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Load_URL(3);
                    },
                  ),
                ),
                Container(
                  width: 250.0,
                  height: 60.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10),
                    ),
                    color: Colors.black54,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              width: 32,
                              height: 32,
                              image: AssetImage(
                                  'Assets/Images/Icons/icons8-google-play-64.png')),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text('Hiragana Pro',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'YeonSung-Regular')),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Load_URL(4);
                    },
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

void Load_URL(int i) async {
  switch (i) {
    case 0:
      {
        const url = 'https://play.google.com/store/apps/details?id=com.Obenkyo';
        if (await canLaunch(url)) {
          await launch(url, forceSafariVC: false);
        } else {
          throw 'Could not launch $url';
        }
      }
      break;
    case 1:
      {
        const url =
            'https://play.google.com/store/apps/details?id=org.eupheme.app.kanamaster';
        if (await canLaunch(url)) {
          await launch(url, forceSafariVC: false);
        } else {
          throw 'Could not launch $url';
        }
      }
      break;
    case 2:
      {
        const url =
            'https://play.google.com/store/apps/details?id=com.duolingo';
        if (await canLaunch(url)) {
          await launch(url, forceSafariVC: false);
        } else {
          throw 'Could not launch $url';
        }
      }
      break;
    case 3:
      {
        const url =
            'https://play.google.com/store/apps/details?id=com.myapps.katakana';
        if (await canLaunch(url)) {
          await launch(url, forceSafariVC: false);
        } else {
          throw 'Could not launch $url';
        }
      }
      break;
    case 4:
      {
        const url =
            'https://play.google.com/store/apps/details?id=com.myapps.hiragana';
        if (await canLaunch(url)) {
          await launch(url, forceSafariVC: false);
        } else {
          throw 'Could not launch $url';
        }
      }
      break;
  }
}
