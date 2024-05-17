import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payment Screen',
      home: PaymentScreen(),
    );
  }
}

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String _selectedPaymentMethod = 'Credit/Debit Card/Wallet/Personal Internet Banking';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Options'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Stamp Duty',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('10.00'),
            SizedBox(height: 16),
            Text(
              'Final Premium',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('21,414.33'),
            SizedBox(height: 32),
            Text(
              'Choose anyone of the payment option below:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            RadioListTile<String>(
              title: Text('Credit/Debit Card/Wallet/Personal Internet Banking'),
              value: 'Credit/Debit Card/Wallet/Personal Internet Banking',
              groupValue: _selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentMethod = value!;
                });
              },
            ),
            RadioListTile<String>(
              title: Text('Business Internet Banking'),
              value: 'Business Internet Banking',
              groupValue: _selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentMethod = value!;
                });
              },
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    // Implement the back navigation logic
                  },
                  child: Text('<< Back', style: TextStyle(color: Colors.blue)),
                ),
                TextButton(
                  onPressed: () {
                    // Implement the proceed to payment action
                  },
                  child: Text('Proceed to payment', style: TextStyle(color: Colors.white)),
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
