import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Videos extends StatefulWidget {
  @override
  _VideosState createState() => _VideosState();
}

class _VideosState extends State<Videos> {
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
                      'Assets/Images/Icons/icons8-play-button-64.png')),
            ),
            Text('Vídeos',
                style: TextStyle(fontSize: 25, fontFamily: 'YeonSung-Regular')),
          ],
        ),
        titleSpacing: 2,
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.redAccent, Colors.orange],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Card(
          color: Colors.white70,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          elevation: 25,
          margin: EdgeInsets.all(20),
          child: GridView.count(
            crossAxisCount: 2,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 70,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10)),
                  color: Colors.redAccent,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(14),
                        child: Image(
                            image: AssetImage(
                                'Assets/Images/Icons/icons8-play-button-64.png')),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: Text('1',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
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
                padding: const EdgeInsets.all(8),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10)),
                  color: Colors.redAccent,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(14),
                        child: Image(
                            image: AssetImage(
                                'Assets/Images/Icons/icons8-play-button-64.png')),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: Text('2',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
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
                padding: const EdgeInsets.all(8),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10)),
                  color: Colors.redAccent,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(14),
                        child: Image(
                            image: AssetImage(
                                'Assets/Images/Icons/icons8-play-button-64.png')),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: Text('3',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
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
                padding: const EdgeInsets.all(8),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10)),
                  color: Colors.redAccent,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(14),
                        child: Image(
                            image: AssetImage(
                                'Assets/Images/Icons/icons8-play-button-64.png')),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: Text('4',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
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
                padding: const EdgeInsets.all(8),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10)),
                  color: Colors.redAccent,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(14),
                        child: Image(
                            image: AssetImage(
                                'Assets/Images/Icons/icons8-play-button-64.png')),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: Text('5',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'YeonSung-Regular')),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Load_URL(4);
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10)),
                  color: Colors.redAccent,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(14),
                        child: Image(
                            image: AssetImage(
                                'Assets/Images/Icons/icons8-play-button-64.png')),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: Text('6',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'YeonSung-Regular')),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Load_URL(5);
                  },
                ),
              ),
            ],
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
        const url = 'https://www.youtube.com/watch?v=HQplNGjz5NA';
        if (await canLaunch(url)) {
          await launch(url, forceSafariVC: false);
        } else {
          throw 'Could not launch $url';
        }
      }
      break;
    case 1:
      {
        const url = 'https://youtu.be/CaVyrOI4Bog';
        if (await canLaunch(url)) {
          await launch(url, forceSafariVC: false);
        } else {
          throw 'Could not launch $url';
        }
      }
      break;
    case 2:
      {
        const url = 'https://youtu.be/kZG4vbiUMAc';
        if (await canLaunch(url)) {
          await launch(url, forceSafariVC: false);
        } else {
          throw 'Could not launch $url';
        }
      }
      break;
    case 3:
      {
        const url = 'https://youtu.be/8vHoeonDqqY';
        if (await canLaunch(url)) {
          await launch(url, forceSafariVC: false);
        } else {
          throw 'Could not launch $url';
        }
      }
      break;
    case 4:
      {
        const url = 'https://youtu.be/I9MSH5M-tBo';
        if (await canLaunch(url)) {
          await launch(url, forceSafariVC: false);
        } else {
          throw 'Could not launch $url';
        }
      }
      break;
    case 5:
      {
        const url = 'https://youtu.be/dsogrJduAGI';
        if (await canLaunch(url)) {
          await launch(url, forceSafariVC: false);
        } else {
          throw 'Could not launch $url';
        }
      }
      break;
  }
}
