import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Optional Coverage',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OptionalCoverageScreen(),
    );
  }
}

class OptionalCoverageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Optional Coverage'),
      ),
      body: ListView(
        children: [
          CoverageCard(
            coverageTitle: 'Protect against Loss of Revenue',
            coverageDetails: [
              'Loss of Revenue due to Fire &/ selected Perils',
              '12 months Indemnity Period',
            ],
            inputFields: [
              'Gross Revenue',
              'Auditor fees (optional)',
            ],
            description: 'Protection from revenue loss resulting from covered events or circumstances.',
          ),
          CoverageCard(
            coverageTitle: 'Protect your Mobile Phones',
            coverageDetails: [
              'Mobile/PDA (Max limit RM10,000)',
              'Laptop/Notebooks (Max limit RM30,000)',
            ],
            inputFields: [
              'Mobile Phones/Sum Insured',
              'Laptop/Sum Insured',
            ],
            description: 'Protection for your mobile phones against certain risks.',
          ),
        ],
      ),
    );
  }
}

class CoverageCard extends StatelessWidget {
  final String coverageTitle;
  final List<String> coverageDetails;
  final List<String> inputFields;
  final String description;

  CoverageCard({
    required this.coverageTitle,
    required this.coverageDetails,
    required this.inputFields,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(12.0),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              coverageTitle,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ...coverageDetails.map(
                  (detail) => Text(detail),
            ),
            ...inputFields.map(
                  (field) => TextFormField(
                decoration: InputDecoration(
                  labelText: field,
                  hintText: 'RM 0',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // TODO: Implement add action
                },
                child: Text('ADD'),
              ),
            ),
            Text(description),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'RM 0.00',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
