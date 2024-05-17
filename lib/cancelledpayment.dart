import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payment Cancelled',
      home: PaymentCancelledScreen(),
    );
  }
}

class PaymentCancelledScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Cancelled'),
        backgroundColor: Colors.grey[300],
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        color: Colors.grey[300],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.cancel, color: Colors.red, size: 48),
            SizedBox(height: 20),
            Text(
              'Payment was cancelled!',
              style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              "We're sorry, but your payment could not be processed because you have cancelled your payment.",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              "To ensure your policy is issued without further delay, you may complete your payment using a bank transfer. "
                  "Please find the necessary details below.",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            buildBankDetail('Account No', '21401360030588'),
            buildBankDetail('Bank Recipient Name', 'JA Assure Sdn Bhd'),
            buildBankDetail('Bank Name', 'RHB Bank Berhad'),
            buildBankDetail('Swift Code', 'RHBMMYKL'),
            buildBankDetail('Reference No', '113264'),
            SizedBox(height: 30),
            Text(
              "Once you have made the transfer, kindly inform us by sending quote number 113264 along with the payment receipt to our support team at "
                  "query@thedoctorsshield.com or whatsapp +60 1229 30700. This will help us to quickly verify your transaction and proceed with the issuance of your policy.",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            TextButton(
              onPressed: () {
                // Implement retry payment action
              },
              child: Text('Retry Payment'),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
            ),
            TextButton(
              onPressed: () {
                // Implement try another quote action
              },
              child: Text('Try Another Quote'),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBankDetail(String title, String detail) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            detail,
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
