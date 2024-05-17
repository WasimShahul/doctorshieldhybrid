import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Past Renewals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PastRenewalsScreen(),
    );
  }
}

class PastRenewalsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> pastRenewals = List.generate(
    10,
        (index) => {
      'title': 'Renewal #${index + 1}',
      'price': 'RM ${(index + 1) * 100.00}',
      'date': '05/03/202${index}',
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Past Renewals'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: pastRenewals.length,
        itemBuilder: (context, index) {
          var renewal = pastRenewals[index];
          return ListTile(
            title: Text(renewal['title']),
            subtitle: Text('Date: ${renewal['date']}'),
            trailing: Text(renewal['price']),
          );
        },
      ),
    );
  }
}
