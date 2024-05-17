import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payment Pending',
      home: PaymentPendingScreen(),
    );
  }
}

class PaymentPendingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Pending'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.info_outline, color: Colors.red, size: 48),
              SizedBox(height: 24),
              Text(
                'Payment Pending',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Thank you for making the payment. We are now waiting for confirmation that the payment has been successful. '
                      'Once we have confirmed the payment status, we will process the Insurance certificate and send the documents to you.',
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                'If you need further assistance, do call us at our hotline or whatsapp our friendly consultants at whatsapp '
                    '+60 1229 30700 or email at query@thedoctorsshield.com by referring your order number 113267.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
              TextButton(
                onPressed: () {
                  // Implement the action for 'Try Another Quote'
                },
                child: Text(
                  'Try Another Quote',
                  style: TextStyle(color: Colors.blue),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
