import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Signin',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(title: 'Expense Manager'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Signin',
                style: TextStyle(
                  fontSize: 24,
                )
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 16.0),
              child: Text(
                'Welcome to Expense Manager',
                style: TextStyle(color: Colors.black.withOpacity(0.54)),
              ),
            ),
            TextFormField(
              cursorColor: Theme.of(context).cursorColor,
              decoration: InputDecoration(
                icon: Icon(Icons.account_circle),
                labelText: 'Username',
                helperText: 'Your email address @',
              ),
              initialValue: '',
              validator: (val) => val.isEmpty || !val.contains('@') ? 'Please, enter valid email address' : null,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 24.0),
              child: TextFormField(
                cursorColor: Theme.of(context).cursorColor,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: 'Password',
                  helperText: 'Your password',
                ),
                initialValue: '',
                obscureText: true,
              ),
            ),
            ElevatedButton(
              child: Container(
                child: Text(
                  'Signin'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                width: MediaQuery.of(context).size.width,
              ),
              onPressed: () {
                print('Sigin');
              },
            ),
          ])
        ),
      ]),
    );
  }
}
