import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PersonalParticularsForm(),
    );
  }
}

class PersonalParticularsForm extends StatefulWidget {
  @override
  _PersonalParticularsFormState createState() => _PersonalParticularsFormState();
}

class _PersonalParticularsFormState extends State<PersonalParticularsForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? fullName;
  DateTime? dateOfBirth;
  String? nricNumber;
  int? numberOfPatientsServed;
  double? income;
  String? primaryLocationOfPractice;
  String? mobileNumber;
  String? email;
  bool agreeToClaimStatement = false;
  bool awareOfAnyErrors = false;
  bool subjectOfDisciplinaryAction = false;
  bool subjectOfCriminalInvestigation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medical Professional Indemnity Insurance'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Full Name as per IC'),
                onSaved: (value) => fullName = value,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'DD/MM/YYYY'),
                onSaved: (value) {
                  // Save this value as a DateTime
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'NRIC number'),
                onSaved: (value) => nricNumber = value,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'No of Patients Served in 2023'),
                onSaved: (value) => numberOfPatientsServed = int.tryParse(value ?? ''),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Income'),
                onSaved: (value) => income = double.tryParse(value ?? ''),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Enter the primary location of Practice'),
                onSaved: (value) => primaryLocationOfPractice = value,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: '+60 Mobile Number'),
                onSaved: (value) => mobileNumber = value,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                onSaved: (value) => email = value,
              ),
              // Add other fields from the second image...
              SwitchListTile(
                title: Text('I agree that No claim have ever'),
                value: agreeToClaimStatement,
                onChanged: (bool value) {
                  setState(() {
                    agreeToClaimStatement = value;
                  });
                },
              ),
              // Add Yes/No toggles for the questions in the second image...
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      // Navigate back
                    },
                    child: Text('<< Back'),
                  ),
                  TextButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        // Process the data
                      }
                    },
                    child: Text('Next >>'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
