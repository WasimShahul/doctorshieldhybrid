import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact Detail',
      theme: ThemeData(
        primaryColor: Colors.teal,
      ),
      home: ContactDetailScreen(),
    );
  }
}

class ContactDetailScreen extends StatelessWidget {
  final TextEditingController _customerNameController = TextEditingController();
  final TextEditingController _clinicNameController = TextEditingController();
  final TextEditingController _mobileNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medical Professional Indemnity Insurance'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              'CONTACT DETAIL',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.teal),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            TextFormField(
              controller: _customerNameController,
              decoration: InputDecoration(
                labelText: 'Customer Name',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.name,
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _clinicNameController,
              decoration: InputDecoration(
                labelText: 'Clinic name (Sdn Bhd/Partnership)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _mobileNumberController,
              decoration: InputDecoration(
                labelText: '+60 Mobile number',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.phone,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: double.infinity, // ensures the button grows to fill the width
              child: OutlinedButton(
                onPressed: () {
                  // Back button action
                },
                child: Text('<< Back', style: TextStyle(color: Colors.teal)),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.teal),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 50,
              width: double.infinity, // ensures the button grows to fill the width
              child: OutlinedButton(
                onPressed: () {
                  // Submit button action
                },
                child: Text('Submit', style: TextStyle(color: Colors.teal)),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.teal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
