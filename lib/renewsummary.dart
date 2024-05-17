import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quotation',
      home: QuotationScreen(),
    );
  }
}

class QuotationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medical Professional Indemnity Insurance'),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'QUOTATION',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 24),
            Text(
              'SPECIAL INDIVIDUAL PREMIUM',
              style: TextStyle(
                color: Colors.teal,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'RM 572.96',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            Text(
              '(i) This premium is pro-rated for the period\n    05/03/2024 to 31/12/2024\n'
                  '(ii) For your information, the standard premium for a\n     12 month period will be RM 690',
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Your Insurance comes with complimentary\nAutomatic Reinstatement now',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 24),
            Text(
              'YOUR TOTAL PAYABLE PREMIUM',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'RM 572.96',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    // Implement the back navigation logic
                  },
                  child: Text(
                    '<< Back',
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Implement the purchase logic
                  },
                  child: Text(
                    'Buy >>',
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
