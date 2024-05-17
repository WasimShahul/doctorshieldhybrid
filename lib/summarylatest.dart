import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Summary Details',
      home: SummaryScreen(),
    );
  }
}

class SummaryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medical Professional Indemnity Insurance'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'SUMMARY',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Divider(),
            buildDetailRow('Plan name:', 'Medical Professional Indemnity Insurance for Individual Practitioners'),
            buildDetailRow('Classification:', 'Specialist (Private sector)'),
            buildDetailRow('Coverage period:', '01/08/2024 to 31/12/2025'),
            buildDetailRow('Auto Reinstatement:', 'Complimentary Auto Reinstatement'),
            buildDetailRow('Specialisation Details:', 'Anaesthetics-20%, Audiological Medicine-5%, Bariatric Surgery-25%, Blood Transfusion-50%'),
            Divider(),
            buildDetailRow('Type of coverage:', 'Individual Coverage'),
            buildDetailRow('Coverage (RM):', '1,500,000'),
            buildDetailRow('Total Premium:', '19,818.82'),
            buildDetailRow('Discount:', '0'),
            buildDetailRow('Net Premium:', '19,818.82'),
            buildDetailRow('Tax 8%:', '1,585.51'),
            buildDetailRow('Stamp Duty:', '10.00'),
            SizedBox(height: 24),
            TextButton(
              onPressed: () {
                // Back button action
              },
              child: Text('<< Back', style: TextStyle(color: Colors.blue)),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Next/Submit button action
              },
              child: Text('Next >>', style: TextStyle(color: Colors.blue)),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
