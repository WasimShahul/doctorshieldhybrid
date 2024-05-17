import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Insurance Quotation',
      home: QuotationScreen(),
    );
  }
}

class QuotationScreen extends StatefulWidget {
  @override
  _QuotationScreenState createState() => _QuotationScreenState();
}

class _QuotationScreenState extends State<QuotationScreen> {
  bool _addOnCoverage = false;
  String _selectedAmount = '100,000';

  @override
  void initState() {
    super.initState();
    // You can add initial setup or data fetch functions here if necessary
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quotation'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Card(
            elevation: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SPECIAL INDIVIDUAL PREMIUM',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'RM 24,742.08',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.teal),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '(1) This premium is quoted for the period 01/02/2024 to 31/12/2025\n(2) Standard premium before discount premium for a 12-month period will be RM 16,495',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'ADD-ON COVERAGE',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal),
                  ),
                  SwitchListTile(
                    title: Text('Do you want to add clinic indemnity insurance?'),
                    value: _addOnCoverage,
                    onChanged: (bool value) {
                      setState(() {
                        _addOnCoverage = value;
                      });
                    },
                    activeTrackColor: Colors.tealAccent,
                    activeColor: Colors.teal,
                  ),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    ),
                    value: _selectedAmount,
                    items: ['100,000', '200,000', '300,000'].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        _selectedAmount = newValue!;
                      });
                    },
                  ),
                  SizedBox(height: 24),
                  Text(
                    'YOUR INSURANCE COMES WITH COMPLIMENTARY AUTOMATIC REINSTATEMENT NOW',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'YOUR TOTAL PAYABLE PREMIUM',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal),
                  ),
                  Text(
                    'RM 24,742.08',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.teal),
                  ),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {
                          // Implement the back navigation logic
                        },
                        child: Text('<< Back', style: TextStyle(color: Colors.teal)),
                      ),
                      TextButton(
                        onPressed: () {
                          // Implement the buy navigation logic
                        },
                        child: Text('Buy >>', style: TextStyle(color: Colors.teal)),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        // Implement the email quotation logic
                      },
                      child: Text(
                        'Email me the Indicative Quotation and Policy Wording',
                        style: TextStyle(color: Colors.teal),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
