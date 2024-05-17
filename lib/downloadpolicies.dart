import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Download Policies',
      home: DownloadPoliciesScreen(),
    );
  }
}

class DownloadPoliciesScreen extends StatelessWidget {
  // Dummy data for the policies list
  final List<Map<String, dynamic>> policies = List.generate(
    10,
        (index) => {
      'policyId': 'POLICY-${index + 1}',
      'data': 'This is policy data number ${index + 1}.',
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Download Policies'),
      ),
      body: ListView.builder(
        itemCount: policies.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(policies[index]['policyId']),
            subtitle: Text(policies[index]['data']),
            trailing: IconButton(
              icon: Icon(Icons.file_download),
              onPressed: () {
                // TODO: Implement download functionality
              },
            ),
          );
        },
      ),
    );
  }
}
