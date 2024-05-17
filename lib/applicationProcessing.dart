import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _showPopup(context));
  }

  void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // Set to false if you want to force a button press to close
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Application Processing'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('We need more time to process your application.'),
                Text('Your case has been assigned to one of our relationship managers, who will contact you shortly.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('Welcome to the Home Screen'),
      ),
    );
  }
}
