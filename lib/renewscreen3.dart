import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Review Details',
      home: ReviewDetailsScreen(),
    );
  }
}

class ReviewDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirm Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Kindly review the details provided and confirm to proceed',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Divider(),
            Text('Classification: Government Doctor/Dentist'),
            Text('Limit Of Liability: RM 1,000,000'),
            Text('Insurance Start Date: 05/03/2024'),
            Text('Insurance End Date: 31/12/2024'),
            Text('Email: siva@ja-secure.com'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    // TODO: Implement edit action
                  },
                  child: Text('Edit', style: TextStyle(color: Colors.blue)),
                ),
                TextButton(
                  onPressed: () {
                    // TODO: Implement confirm action
                  },
                  child: Text('Confirm', style: TextStyle(color: Colors.white)),
                  style: TextButton.styleFrom(backgroundColor: Colors.blue),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
