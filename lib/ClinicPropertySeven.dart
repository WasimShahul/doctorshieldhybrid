import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Summary',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SummaryScreen(),
    );
  }
}

class SummaryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Summary'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          SummarySection(),
          FireAndPerilsInsuranceSection(),
          ExcessSection(),
          FinalDetailsSection(),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  // Back action
                },
                child: Text('BACK'),
              ),
              TextButton(
                onPressed: () {
                  // Email quote action
                },
                child: Text('EMAIL ME A QUOTE'),
              ),
            ],
          ),
          SizedBox(height: 20),
          Center(
            child: TextButton(
              onPressed: () {
                // Proceed to purchase action
              },
              child: Text('PROCEED TO PURCHASE'),
            ),
          ),
        ],
      ),
    );
  }
}

class SummarySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Clinic Name: sdfsdf'),
            Text('Coverage Period: 12 Months'),
            Text('Location: Malakat Mall, Lingkaran Cyber Point Timur, Cyberjaya, Selangor, Malaysia'),
            TextButton(
              onPressed: () {
                // Edit details action
              },
              child: Text('EDIT DETAILS'),
            ),
          ],
        ),
      ),
    );
  }
}

class FireAndPerilsInsuranceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('FIRE & PERILS INSURANCE'),
            Text('Building: RM 1,000.00'),
            Text('Architects, Surveyors, and Consultants Fees: RM 200.00'),
            Text('Removal of Debris: RM 2,000.00'),
            Text('Minimum coverage premium is RM 75.00'),
          ],
        ),
      ),
    );
  }
}

class ExcessSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('EXCESS'),
            Text('Storm, Tempest: 1% of Total Sum Insured or RM 200 Whichever Is Less'),
            Text('Flood: 1% of Total Sum Insured or RM 2,500 Whichever Is Less'),
            Text('Impact Damage (Including Insured\'s Own Vehicles): RM 250.00 Each and Every Claim'),
            Text('Bursting or Overflowing of Water Tanks, Apparatus, or Pipes: First RM 1,000 for Each and Every Loss for Each Separate Premises. For Sums Insured Less Than RM 50,000, 1% of Sum Insured Subject to a Minimum of RM 100'),
          ],
        ),
      ),
    );
  }
}

class FinalDetailsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Total Premium: RM 75.00'),
            Text('Tax 8%: RM 6.00'),
            Text('Stamp Duty: RM 10.00'),
            Text('Final Premium: RM 91.00'),
            TextFormField(
              decoration: InputDecoration(labelText: 'Person-In-Charge full name'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'PIC Mykad ID'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Insurance Start Date'),
            ),
            SizedBox(height: 10),
            Text('Have You Suffered Any Loss or Any Insurance Claim at the Insured Premises in the Past 3 Years?'),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    // Yes action
                  },
                  child: Text('YES'),
                ),
                TextButton(
                  onPressed: () {
                    // No action
                  },
                  child: Text('NO'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
