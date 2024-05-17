import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your Policies',
      home: PoliciesScreen(),
    );
  }
}

class PoliciesScreen extends StatelessWidget {
  final List<String> policyNumbers = [
    "IDL-872718/23/JAA-54",
    "IDL-872718/23/JAA-24",
    // Add all policy numbers here
    "IDL-872718/23/JAA-1",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Policies'),
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: policyNumbers.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(policyNumbers[index]),
            // Optionally, handle onTap to navigate or provide more details about the policy
            onTap: () {},
          );
        },
      ),
    );
  }
}
