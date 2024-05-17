import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard Screen',
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Implement Clinic Property navigation or logic
                print('Clinic Property Clicked');
              },
              child: Text('Clinic Property'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 50), // set the size
              ),
            ),
            SizedBox(height: 20), // Space between buttons
            ElevatedButton(
              onPressed: () {
                // Implement Clinic Insurance navigation or logic
                print('Clinic Insurance Clicked');
              },
              child: Text('Clinic Insurance'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 50), // set the size
              ),
            ),
            SizedBox(height: 20), // Space between buttons
            ElevatedButton(
              onPressed: () {
                // Implement Doctor Insurance navigation or logic
                print('Doctor Insurance Clicked');
              },
              child: Text('Doctor Insurance'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 50), // set the size
              ),
            ),
          ],
        ),
      ),
    );
  }
}
