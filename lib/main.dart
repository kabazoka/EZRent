import 'package:flutter/material.dart';
import 'package:flutter_tinder_swipe/flutter_tinder_swipe.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:another_flushbar/flushbar_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              child: const Image(image: AssetImage("assets/logout.jpg")),
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Register()));
                    },
                    child: const Text('Register'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.black,
                      backgroundColor: Colors.white,
                      side: BorderSide(color: Colors.black),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: const Text('Login'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController pwController = TextEditingController();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10, top: 80),
              alignment: Alignment.topLeft,
              child: Image.asset('assets/login.jpg',
                  height: 80, width: 150, fit: BoxFit.cover),
            ),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 50),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                  onChanged: (text) {
                    setState(() {
                      email = text;
                    });
                  },
                )),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 50),
                child: TextField(
                  controller: pwController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                  onChanged: (text) {
                    setState(() {
                      password = text;
                    });
                  },
                )),
            Container(
              width: 350,
              margin: EdgeInsets.only(left: 20, right: 20, top: 50),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(5)),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => pageChoice()));
                },
                child: Text(
                  'LOG IN',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController nameController = TextEditingController();
  TextEditingController pwController = TextEditingController();
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 15, top: 80),
              alignment: Alignment.topLeft,
              child: Image.asset('assets/register.jpg',
                  height: 80, width: 150, fit: BoxFit.cover),
            ),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 50),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                  onChanged: (text) {
                    setState(() {
                      email = text;
                    });
                  },
                )),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 50),
                child: TextField(
                  controller: pwController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                  onChanged: (text) {
                    setState(() {
                      password = text;
                    });
                  },
                )),
            Container(
              width: 350,
              margin: EdgeInsets.only(left: 20, right: 20, top: 50),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(5)),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Register2()));
                },
                child: Text(
                  'NEXT',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Register2 extends StatefulWidget {
  @override
  _Register2State createState() => _Register2State();
}

class _Register2State extends State<Register2> {
  TextEditingController nameController = TextEditingController();
  String username = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 15, top: 80),
              alignment: Alignment.topLeft,
              child: Image.asset('assets/register.jpg',
                  height: 80, width: 150, fit: BoxFit.cover),
            ),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 50),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                  onChanged: (text) {
                    setState(() {
                      username = text;
                    });
                  },
                )),
            Container(
              width: 350,
              margin: EdgeInsets.only(left: 20, right: 20, top: 50),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(5)),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text(
                  'SIGN UP',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 50),
              child: Text(
                  "By signing up, you agree to EZRent's Terms of Service and Privacy Policy."),
            ),
          ],
        ),
      ),
    );
  }
}

class pageChoice extends StatefulWidget {
  const pageChoice({Key? key}) : super(key: key);
  @override
  _pageChoiceState createState() => _pageChoiceState();
}

class _pageChoiceState extends State<pageChoice> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 5,
          child: Scaffold(
            bottomNavigationBar: menu(),
            body: TabBarView(
              children: [
                Filter1(),
                Selection(),
                MatchedList(),
                Chat(),
                Settings(),
              ],
            ),
          )),
    );
  }

  Widget menu() {
    return Container(
      color: Colors.white,
      child: TabBar(
        tabs: [
          Tab(
            icon: Icon(Icons.filter_list, color: Colors.black),
          ),
          Tab(
            icon: Icon(Icons.bookmark_border, color: Colors.black),
          ),
          Tab(
            icon: Icon(Icons.home_outlined, color: Colors.black),
          ),
          Tab(
            icon: Icon(Icons.chat_outlined, color: Colors.black),
          ),
          Tab(
            icon: Icon(Icons.settings, color: Colors.black),
          ),
        ],
      ),
    );
  }
}

class Filter1 extends StatefulWidget {
  @override
  _Filter1State createState() => _Filter1State();
}

class _Filter1State extends State<Filter1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 80),
              alignment: Alignment.topLeft,
              child: Image.asset('assets/livealone.jpg', fit: BoxFit.cover),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Filter2()));
                    },
                    child: Text(
                      'Yes',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'No',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Filter2 extends StatefulWidget {
  @override
  _Filter2State createState() => _Filter2State();
}

class _Filter2State extends State<Filter2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => pageChoice()));
                  },
                  child:
                      Image.asset('assets/preference2.png', fit: BoxFit.cover)),
            ),
          ],
        ),
      ),
    );
  }
}

class Selection extends StatefulWidget {
  @override
  _SelectionState createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
  CardController controller = CardController();

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: new Scaffold(
        body: Center(
          child: _showPrefListData(size, controller),
        ),
      ),
    );
  }

  _showPrefListData(Size size, CardController cardController) {
    return Column(
      children: [
        Center(
          child: Container(
            margin: const EdgeInsets.only(top: 50),
            height: size.height * 0.6,
            child: new SwipeCard(
              swipeEdgeVertical: 8.0,
              animDuration: 500,
              totalNum: 3,
              stackNum: 3,
              swipeEdge: 2.0,
              allowVerticalMovement: false,
              maxWidth: MediaQuery.of(context).size.width * 1,
              minWidth: MediaQuery.of(context).size.width * 0.8,
              minHeight: MediaQuery.of(context).size.width + 120 * 0.88,
              maxHeight: MediaQuery.of(context).size.width + 120 * 0.99,
              cardBuilder: (context, index) => Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: FadeInImage(
                              fit: BoxFit.cover,
                              height: MediaQuery.of(context).size.height * 1,
                              width: MediaQuery.of(context).size.width,
                              image: AssetImage(
                                imageItems[index]['image'],
                              ),
                              placeholder: AssetImage(
                                imageItems[index]['image'],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: double.infinity,
                              height: size.height * 0.15,
                              decoration: new BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                color: Colors.white,
                                gradient: new LinearGradient(
                                    colors: [
                                      Colors.transparent,
                                      Colors.black54,
                                    ],
                                    begin: const FractionalOffset(1.0, 0.0),
                                    end: const FractionalOffset(0.0, 1.0),
                                    stops: [0.0, 1.0],
                                    tileMode: TileMode.clamp),
                              ),
                              child: Column(
                                children: [
                                  Text("9451 Sunset Blvd",
                                      style: TextStyle(
                                          color: const Color(0xffffffff),
                                          fontWeight: FontWeight.w400,
                                          fontSize: size.width * 0.09),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left),
                                  Text("Beverly Hills",
                                      style: TextStyle(
                                          color: const Color(0xffffffff),
                                          fontWeight: FontWeight.w400,
                                          fontSize: size.width * 0.07),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '\$7000-9000/mthly',
                                      style: TextStyle(
                                          color: const Color(0xffffffff),
                                          fontWeight: FontWeight.w400,
                                          fontSize: size.width * 0.04),
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ))),
              cardController: cardController,
              swipeUpdateCallback:
                  (DragUpdateDetails details, Alignment align) {
                /// Get swiping card's alignment
                if (align.x < 0) {
                  //Card is LEFT swiping

                } else if (align.x > 0) {
                  //Card is RIGHT swiping

                }
              },
              swipeCompleteCallback:
                  (CardSwipeOrientation orientation, int index) {},
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FloatingActionButton.extended(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  elevation: 10,
                  heroTag: null,
                  onPressed: () {
                    cardController.swipeLeft();
                  },
                  backgroundColor: Colors.black,
                  icon: Icon(Icons.close),
                  label: Text('Dislike'),
                ),
                FloatingActionButton.extended(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  elevation: 10,
                  heroTag: null,
                  onPressed: () {
                    cardController.swipeRight();
                  },
                  backgroundColor: Colors.red,
                  icon: Icon(Icons.check),
                  label: Text('  Like  '),
                ),
              ]),
        ),
      ],
    );
  }

  List<dynamic> imageItems = [
    {
      "image": "assets/sle1.jpg",
    },
    {
      "image": "assets/sle2.jpg",
    },
    {
      "image": "assets/sle3.jpg",
    },
    {
      "image": "assets/sle4.jpg",
    },
  ];
}

class MatchedList extends StatefulWidget {
  @override
  _MatchedListState createState() => _MatchedListState();
}

class _MatchedListState extends State<MatchedList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text("Matched List"),
            ),
          ],
        ),
      ),
    );
  }
}

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Individual()));
                  },
                  child: Image.asset('assets/chats.png', fit: BoxFit.cover)),
            ),
          ],
        ),
      ),
    );
  }
}

class Individual extends StatefulWidget {
  @override
  _IndividualState createState() => _IndividualState();
}

class _IndividualState extends State<Individual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => pageChoice()));
                  },
                  child: Image.asset('assets/Individualchat.png',
                      fit: BoxFit.cover)),
            ),
          ],
        ),
      ),
    );
  }
}

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox.expand(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              Container(
                child: Text("Landlord Mode"),
              ),
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                    print(isSwitched);
                  });
                },
                activeTrackColor: Colors.lightGreenAccent,
                activeColor: Colors.green,
              ),
            ])));
  }
}
