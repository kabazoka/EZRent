import 'package:flutter/material.dart';

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
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Filter1()));
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
                    onPressed: () {},
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
