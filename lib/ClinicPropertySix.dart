import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Optional Coverage',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CoverageDetailsScreen(),
    );
  }
}

class CoverageDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Optional Coverage'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Protection and Liability Coverage',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Divider(),
            Text('Burglary RM 20,000'),
            Text('Money Inside Premises RM 5,000'),
            Text('Money in Transit RM 5,000'),
            Text('Fidelity Guarantee RM 10,000'),
            Text('Plate Glass RM 10,000'),
            Text('Public Liability RM 1,000,000'),
            Text('Employer Liability RM 250,000'),
            Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // TODO: Add action
                },
                child: Text('ADD'),
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Premium RM 405',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    // TODO: Back action
                  },
                  child: Text('BACK'),
                ),
                TextButton(
                  onPressed: () {
                    // TODO: Skip action
                  },
                  child: Text('SKIP'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
