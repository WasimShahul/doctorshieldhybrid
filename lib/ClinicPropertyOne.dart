import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InsuranceFormScreen(),
    );
  }
}

class InsuranceFormScreen extends StatelessWidget {
  final TextEditingController _clinicNameController = TextEditingController();
  final TextEditingController _clinicNumberController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculate your Premium Instantly'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: _clinicNameController,
              decoration: InputDecoration(
                labelText: 'Registered Clinic Name',
                hintText: 'ex. International Clinic',
                suffixIcon: Icon(Icons.domain),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              controller: _clinicNumberController,
              decoration: InputDecoration(
                labelText: 'Registered Clinic Number',
                hintText: 'ex. MY12367',
                suffixIcon: Icon(Icons.confirmation_number),
              ),
            ),
            SizedBox(height: 8),
            TextField(
              controller: _addressController,
              decoration: InputDecoration(
                labelText: 'Clinic Address to be insured',
                hintText: 'ex. 2 Angkasaraya Jln Ampang, Kuala Lumpur',
                suffixIcon: Icon(Icons.location_on),
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField(
                    items: ['1', '2', '3', '4', '5']
                        .map((floor) => DropdownMenuItem(
                      value: floor,
                      child: Text('$floor Floors'),
                    ))
                        .toList(),
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      labelText: 'Total Floors',
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: DropdownButtonFormField(
                    items: ['Type 1', 'Type 2', 'Type 3']
                        .map((type) => DropdownMenuItem(
                      value: type,
                      child: Text(type),
                    ))
                        .toList(),
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      labelText: 'Construction Type',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email ID',
                hintText: 'johnsmith@gmail.com',
                suffixIcon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 8),
            TextField(
              controller: _phoneNumberController,
              decoration: InputDecoration(
                labelText: 'Mobile Number',
                hintText: '+60 1234 56789',
                suffixIcon: Icon(Icons.phone),
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: CheckboxListTile(
                    title: Text('I understand and agree to the Terms and Conditions, Privacy Policy and confirm that I meet all local regulations.'),
                    value: false,
                    onChanged: (newValue) {
                      // Handle change
                    },
                    controlAffinity: ListTileControlAffinity.leading, // Position the checkbox at the start of the ListTile
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            TextButton(
              onPressed: () {
                // TODO: Implement get started action
              },
              child: Text(
                'GET STARTED',
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
