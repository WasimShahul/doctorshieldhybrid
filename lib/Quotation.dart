import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(QuotationFormApp());

class QuotationFormApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuotationFormPage(),
    );
  }
}

class QuotationFormPage extends StatefulWidget {
  @override
  _QuotationFormPageState createState() => _QuotationFormPageState();
}

class _QuotationFormPageState extends State<QuotationFormPage> {
  final _formKey = GlobalKey<FormState>();
  String policyNumber = '';
  double insuredAmount = 0.0;
  DateTime? dateOfBirth;
  String medicalHistory = '';
  double claimAmount = 0.0;
  String reasonForClaim = '';
  String classification = '';
  String clinicRevenue = '';
  String limitOfLiability = '';
  DateTime? insuranceStartDate;
  int addInsuranceForEmployedDoctors = 0;
  String emailAddress = '';
  String promoCode = '';

  final DateFormat dateFormat = DateFormat('yyyy-MM-dd');
  final List<String> classifications = ['Aesthetic', 'Allergy', 'Chiropractic'];
  final List<String> revenueBrackets = ['< 100k', '100k-500k', '>500k'];
  final List<String> liabilityLimits = ['1M', '2M', '5M'];

  Future<void> _selectDate(BuildContext context, DateTime? initialDate, Function(DateTime) onDateSelected) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: initialDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != initialDate) {
      onDateSelected(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Claim Form')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Policy Number'),
                onSaved: (value) => policyNumber = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Insured Amount'),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                onSaved: (value) => insuredAmount = double.parse(value!),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Medical History'),
                maxLines: 3,
                onSaved: (value) => medicalHistory = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Claim Amount'),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                onSaved: (value) => claimAmount = double.parse(value!),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Reason for Claim'),
                maxLines: 3,
                onSaved: (value) => reasonForClaim = value!,
              ),
              DropdownButtonFormField(
                decoration: InputDecoration(labelText: 'Classification'),
                items: classifications.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    classification = newValue!;
                  });
                },
              ),
              DropdownButtonFormField(
                decoration: InputDecoration(labelText: 'Clinic Revenue'),
                items: revenueBrackets.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    clinicRevenue = newValue!;
                  });
                },
              ),
              DropdownButtonFormField(
                decoration: InputDecoration(labelText: 'Limit Of Liability'),
                items: liabilityLimits.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    limitOfLiability = newValue!;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Add Insurance for Employed Doctors'),
                keyboardType: TextInputType.number,
                onSaved: (value) => addInsuranceForEmployedDoctors = int.parse(value!),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email Address'),
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) => emailAddress = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Promo Code'),
                onSaved: (value) => promoCode = value!,
              ),
              ElevatedButton(
                onPressed: () => _selectDate(context, dateOfBirth, (newDate) {
                  setState(() => dateOfBirth = newDate);
                }),
                child: Text(dateOfBirth == null ? 'Select Date of Birth' : 'DOB: ${dateFormat.format(dateOfBirth!)}'),
              ),
              ElevatedButton(
                onPressed: () => _selectDate(context, insuranceStartDate, (newDate) {
                  setState(() => insuranceStartDate = newDate);
                }),
                child: Text(insuranceStartDate == null ? 'Select Insurance Start Date' : 'Start Date: ${dateFormat.format(insuranceStartDate!)}'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // Implement the submit logic
                      print('Form Submitted');
                    }
                  },
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
