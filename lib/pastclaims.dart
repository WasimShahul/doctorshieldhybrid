import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Past Claims',
      home: PastClaimsScreen(),
    );
  }
}

class PastClaimsScreen extends StatelessWidget {
  // Dummy list of past claims data
  final List<Map<String, String>> pastClaims = [
    {
      'Name of Insured': 'John Doe',
      'Contact Email': 'john.doe@example.com',
      'Phone Number': '+1234567890',
      'Policy Number': 'POL123456',
      // Add more claim details here
    },
    {
      'Name of Insured': 'John Doe',
      'Contact Email': 'john.doe@example.com',
      'Phone Number': '+1234567890',
      'Policy Number': 'POL123456',
      // Add more claim details here
    },
    {
      'Name of Insured': 'John Doe',
      'Contact Email': 'john.doe@example.com',
      'Phone Number': '+1234567890',
      'Policy Number': 'POL123456',
      // Add more claim details here
    },
    {
      'Name of Insured': 'John Doe',
      'Contact Email': 'john.doe@example.com',
      'Phone Number': '+1234567890',
      'Policy Number': 'POL123456',
      // Add more claim details here
    },
    // Add more claims here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PAST CLAIMS'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: pastClaims.length,
        itemBuilder: (context, index) {
          Map<String, String> claim = pastClaims[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(claim['Name of Insured'] ?? 'No name'),
              subtitle: Text('Policy Number: ${claim['Policy Number']}'),
              onTap: () {
                // Handle tap action, for example navigate to claim details
              },
            ),
          );
        },
      ),
    );
  }
}
