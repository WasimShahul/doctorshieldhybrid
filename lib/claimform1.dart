import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Claim Form',
      home: ClaimFormScreen(),
    );
  }
}

class ClaimFormScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _policyNumberController = TextEditingController();
  final TextEditingController _hospitalController = TextEditingController();
  final TextEditingController _causeController = TextEditingController();
  final TextEditingController _detailsController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _specialityController = TextEditingController();
  final TextEditingController _patientNameController = TextEditingController();
  final TextEditingController _nationalityController = TextEditingController();
  final TextEditingController _solicitorsController = TextEditingController();
  final TextEditingController _claimantNameController = TextEditingController();
  final TextEditingController _relationshipController = TextEditingController();
  final TextEditingController _notificationDateController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Claim Form'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // ... Add all other input fields in similar fashion ...
            buildTextField('Name of Insured', _nameController),
            buildTextField('Contact Email', _emailController),
            buildTextField('Phone Number', _phoneNumberController),
            buildTextField('Policy Number', _policyNumberController),
            buildTextField('Hospital / Clinic / Location of Incident', _hospitalController),
            buildTextField('Cause of Incident', _causeController),
            // ... Repeat for each field from your images ...
            buildTextField('Injury Details / Loss', _detailsController),
            buildTextField('Date of Incident/Loss', _dateController),
            buildTextField('Speciality', _specialityController),
            buildTextField('Patient\'s Name', _patientNameController),
            buildTextField('Nationality of Patient', _nationalityController),
            buildTextField('Claimant Solicitors / Lawyers', _solicitorsController),
            buildTextField('Claimant\'s Name', _claimantNameController),
            buildTextField('Claimant\'s Relationship to Patient', _relationshipController),
            buildTextField('First Notification Received On', _notificationDateController),
            // Gender selection, File picker and Description field need different widgets
            SizedBox(height: 16),
            Text('Gender of Patient'),
            Row(
              children: [
                Expanded(child: ListTile(title: Text('Male'), leading: Radio(value: 'Male', groupValue: '', onChanged: (_) {}))),
                Expanded(child: ListTile(title: Text('Female'), leading: Radio(value: 'Female', groupValue: '', onChanged: (_) {}))),
              ],
            ),
            // Add file picker here
            // ...
            buildTextField('Description of Facts/Injuries', _descriptionController),
            SizedBox(height: 16),
            Center(
              child: TextButton(
                onPressed: () {
                  // TODO: Submit the form data
                },
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
