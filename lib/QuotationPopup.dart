import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Popup Dialog Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // You can use a FutureBuilder to show the dialog after the build method
    // or simply call it in a post-frame callback like below:
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showNotesPopup(context);
    });

    return Center(
      child: Text('Welcome to the Home Screen'),
    );
  }

  void _showNotesPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Notes'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Kindly note that the promo code you have used is ineligible for you as you are an existing client. Nevertheless, we have replaced it with the right promo code that still ensures you enjoy the discounted premium.'),
                SizedBox(height: 10),
                Text('Kindly acknowledge so that we can proceed with the renewal. Thank you. If you need further assistance, please contact mmi@ja-assure.com or WhatsApp +60 12-536 0700'),
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
}
