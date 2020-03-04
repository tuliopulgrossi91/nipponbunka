import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Sites extends StatefulWidget {
  @override
  _SitesState createState() => _SitesState();
}

class _SitesState extends State<Sites> {
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
                image: AssetImage('Assets/Images/Icons/icons8-asia-64.png'),
              ),
            ),
            Text('Sites',
                style: TextStyle(fontSize: 25, fontFamily: 'YeonSung-Regular')),
          ],
        ),
        titleSpacing: 2,
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.cyan, Colors.blue],
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
                  color: Colors.blueAccent,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(14),
                        child: Image(
                            image: AssetImage(
                                'Assets/Images/Icons/icons8-asia-64.png')),
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
                  color: Colors.blueAccent,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(14),
                        child: Image(
                            image: AssetImage(
                                'Assets/Images/Icons/icons8-asia-64.png')),
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
                  color: Colors.blueAccent,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(14),
                        child: Image(
                            image: AssetImage(
                                'Assets/Images/Icons/icons8-asia-64.png')),
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
                  color: Colors.blueAccent,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(14),
                        child: Image(
                            image: AssetImage(
                                'Assets/Images/Icons/icons8-asia-64.png')),
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
                  color: Colors.blueAccent,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(14),
                        child: Image(
                            image: AssetImage(
                                'Assets/Images/Icons/icons8-asia-64.png')),
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
                  color: Colors.blueAccent,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(14),
                        child: Image(
                            image: AssetImage(
                                'Assets/Images/Icons/icons8-asia-64.png')),
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
        const url = 'http://www.nihongobrasil.com.br/';
        if (await canLaunch(url)) {
          await launch(url, forceSafariVC: false);
        } else {
          throw 'Could not launch $url';
        }
      }
      break;
    case 1:
      {
        const url = 'https://www.nhk.or.jp/lesson/portuguese/';
        if (await canLaunch(url)) {
          await launch(url, forceSafariVC: false);
        } else {
          throw 'Could not launch $url';
        }
      }
      break;
    case 2:
      {
        const url = 'http://www.aulasdejapones.com.br/';
        if (await canLaunch(url)) {
          await launch(url, forceSafariVC: false);
        } else {
          throw 'Could not launch $url';
        }
      }
      break;
    case 3:
      {
        const url = 'http://portugues.freejapaneselessons.com/index.cfm';
        if (await canLaunch(url)) {
          await launch(url, forceSafariVC: false);
        } else {
          throw 'Could not launch $url';
        }
      }
      break;
    case 4:
      {
        const url = 'https://www.japanesepod101.com/';
        if (await canLaunch(url)) {
          await launch(url, forceSafariVC: false);
        } else {
          throw 'Could not launch $url';
        }
      }
      break;
    case 5:
      {
        const url = 'http://www.tanos.co.uk/jlpt/';
        if (await canLaunch(url)) {
          await launch(url, forceSafariVC: false);
        } else {
          throw 'Could not launch $url';
        }
      }
      break;
  }
}
