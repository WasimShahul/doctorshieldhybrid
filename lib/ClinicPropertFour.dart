import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Select Coverage',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SelectCoverageScreen(),
    );
  }
}

class SelectCoverageScreen extends StatefulWidget {
  @override
  _SelectCoverageScreenState createState() => _SelectCoverageScreenState();
}

class _SelectCoverageScreenState extends State<SelectCoverageScreen> {
  String _selectedOption = '';

  void _selectOption(String option) {
    setState(() {
      _selectedOption = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select your coverage'),
      ),
      body: Column(
        children: [
          CoverageOption(
            title: 'FIRE INSURANCE',
            building: 'RM 0.63',
            architectFees: 'RM 0.13',
            removalDebris: 'RM 1.26',
            total: 'RM 2.02',
            selectedOption: _selectedOption,
            onSelect: () => _selectOption('FIRE INSURANCE'),
          ),
          CoverageOption(
            title: 'FIRE & PERILS INSURANCE',
            building: 'RM 1.64',
            architectFees: 'RM 0.33',
            removalDebris: 'RM 3.56',
            total: 'RM 5.53',
            selectedOption: _selectedOption,
            onSelect: () => _selectOption('FIRE & PERILS INSURANCE'),
            isRecommended: true,
          ),
          Spacer(),
          ButtonBar(
            alignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {
                  // TODO: Implement back action
                },
                child: Text('BACK'),
              ),
              TextButton(
                onPressed: () {
                  // TODO: Implement next action
                },
                child: Text('NEXT'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CoverageOption extends StatelessWidget {
  final String title;
  final String building;
  final String architectFees;
  final String removalDebris;
  final String total;
  final bool isRecommended;
  final String selectedOption;
  final VoidCallback onSelect;

  CoverageOption({
    required this.title,
    required this.building,
    required this.architectFees,
    required this.removalDebris,
    required this.total,
    this.isRecommended = false,
    required this.selectedOption,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              title: Text(title),
              subtitle: isRecommended ? Text('Recommended') : null,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Building'),
                Text(building),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Architects, Surveyors, and Consultants Fees'),
                Text(architectFees),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Removal of Debris'),
                Text(removalDebris),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total'),
                Text(total),
              ],
            ),
            TextButton(
              onPressed: onSelect,
              child: selectedOption == title
                  ? Icon(Icons.check, color: Colors.green)
                  : Text('SELECT'),
            ),
          ],
        ),
      ),
    );
  }
}
