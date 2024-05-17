import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Past Quotations',
      home: PastQuotationsScreen(),
    );
  }
}

class PastQuotationsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> pastQuotations = List.generate(
    10,
        (index) => {
      'Plan name': 'Medical Professional Indemnity Insurance for Individual Practitioners',
      'Classification': 'Specialist (Private sector)',
      'Coverage period': '01/08/202${index} to 31/12/202${index}',
      'Total Premium': 'RM ${1500 + (index * 100)}.00',
      // Add more quotation details here
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Past Quotations'),
      ),
      body: ListView.builder(
        itemCount: pastQuotations.length,
        itemBuilder: (context, index) {
          var quotation = pastQuotations[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(quotation['Plan name']),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Classification: ${quotation['Classification']}'),
                  Text('Coverage period: ${quotation['Coverage period']}'),
                  Text('Total Premium: ${quotation['Total Premium']}'),
                ],
              ),
              isThreeLine: true,
            ),
          );
        },
      ),
    );
  }
}
