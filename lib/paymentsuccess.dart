import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payment Success',
      home: PaymentSuccessScreen(),
    );
  }
}

class PaymentSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Success'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(Icons.check_circle_outline, size: 60.0, color: Colors.green),
              SizedBox(height: 20),
              Text(
                'Payment Success!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),
              ),
              SizedBox(height: 20),
              Text(
                'Thank you for choosing JA Medical Professional Indemnity Insurance for Individual Practitioners And Medical Establishment. '
                    'We have emailed your Policy Document and Premium Receipt.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                'If you need further assistance, do call us at our hotline or whatsapp our friendly consultants at whatsapp '
                    '+60 1229 30700 or email at query@thedoctorsshield.com by referring your order number 113264.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              TextButton(
                onPressed: () {
                  // Implement the action for 'Try Another Quote'
                },
                child: Text(
                  'Try Another Quote',
                  style: TextStyle(color: Colors.blue),
                ),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
