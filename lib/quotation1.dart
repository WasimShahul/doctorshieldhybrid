import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Insurance Premium Calculator',
      home: PremiumCalculatorScreen(),
    );
  }
}

class PremiumCalculatorScreen extends StatefulWidget {
  @override
  _PremiumCalculatorScreenState createState() => _PremiumCalculatorScreenState();
}

class _PremiumCalculatorScreenState extends State<PremiumCalculatorScreen> {
  final _formKey = GlobalKey<FormState>();
  DateTime? _startDate;
  DateTime? _endDate;
  final _dateFormat = DateFormat('yyyy-MM-dd');

  // Mock data for dropdowns
  final List<String> _classifications = ['Classification A', 'Classification B', 'Classification C'];
  final List<String> _limits = ['Limit 1', 'Limit 2', 'Limit 3'];
  String? _selectedClassification;
  String? _selectedLimit;

  Future<void> _selectDate(BuildContext context, {required bool isStartDate}) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: isStartDate ? _startDate ?? DateTime.now() : _endDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        if (isStartDate) {
          _startDate = picked;
        } else {
          _endDate = picked;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculate Your Premium Instantly'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              DropdownButtonFormField<String>(
                value: _selectedClassification,
                hint: Text('Classification'),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedClassification = newValue;
                  });
                },
                items: _classifications.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                validator: (value) => value == null ? 'Please select a classification' : null,
              ),
              DropdownButtonFormField<String>(
                value: _selectedLimit,
                hint: Text('Limit Of Liability'),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedLimit = newValue;
                  });
                },
                items: _limits.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                validator: (value) => value == null ? 'Please select a limit' : null,
              ),
              TextFormField(
                onTap: () => _selectDate(context, isStartDate: true),
                readOnly: true,
                decoration: InputDecoration(
                  hintText: 'Insurance Start Date',
                ),
                controller: TextEditingController(text: _startDate != null ? _dateFormat.format(_startDate!) : ''),
                validator: (value) => value == null || value.isEmpty ? 'Please enter start date' : null,
              ),
              TextFormField(
                onTap: () => _selectDate(context, isStartDate: false),
                readOnly: true,
                decoration: InputDecoration(
                  hintText: 'Insurance End Date',
                ),
                controller: TextEditingController(text: _endDate != null ? _dateFormat.format(_endDate!) : ''),
                validator: (value) => value == null || value.isEmpty ? 'Please enter end date' : null,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Your Email',
                ),
                validator: (value) => value == null || !value.contains('@') ? 'Please enter a valid email' : null,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Promo Code',
                ),
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: true,
                    onChanged: (bool? value) {
                      // Handle checkbox state
                    },
                  ),
                  Expanded(
                    child: Text(
                      'I have read, understood and agree to the terms and conditions, privacy policy and Product disclosure Document (English)/(Malay) and I meet all local regulation to practice my profession.',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a Snackbar.
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Processing Data')));
                  }
                },
                child: Text('Calculate'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
