import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Removal of Debris',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: RemovalOfDebrisScreen(),
    );
  }
}

class RemovalOfDebrisScreen extends StatelessWidget {
  final TextEditingController sumInsuredController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Removal of Debris'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Coverage includes:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            BulletList(
              strings: [
                'Building',
                'Stock-in-Trade',
                'Plant & Machinery',
                'Furniture, Fixtures, Fittings, Renovation & Contents',
              ],
            ),
            TextField(
              controller: sumInsuredController,
              decoration: InputDecoration(
                labelText: 'Sum Insured',
                hintText: 'RM 0',
              ),
              keyboardType: TextInputType.number,
            ),
            Text(
              'Note: Recommended Limit: 10% of the total sum insured/ RM 2,000,000 in aggregate any one loss whichever is lower',
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: 20),
            InsuranceOption(title: 'FIRE INSURANCE', premium: 'RM 0.00'),
            InsuranceOption(title: 'FIRE & PERILS INSURANCE', premium: 'RM 0.00', isRecommended: true),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SimpleButton(text: 'BACK'),
                SimpleButton(text: 'SKIP', color: Colors.green),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class BulletList extends StatelessWidget {
  final List<String> strings;

  BulletList({required this.strings});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: strings.map((item) => BulletListItem(text: item)).toList(),
    );
  }
}

class BulletListItem extends StatelessWidget {
  final String text;

  BulletListItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('• ', style: TextStyle(fontSize: 20)),
        Expanded(child: Text(text)),
      ],
    );
  }
}

class InsuranceOption extends StatelessWidget {
  final String title;
  final String premium;
  final bool isRecommended;

  InsuranceOption({required this.title, required this.premium, this.isRecommended = false});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(isRecommended ? 'Recommended' : ''),
        trailing: Text(premium),
      ),
    );
  }
}

class SimpleButton extends StatelessWidget {
  final String text;
  final Color color;

  SimpleButton({required this.text, this.color = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: color,
      ),
      onPressed: () {
        // TODO: Add your onPressed code here!
      },
      child: Text(text),
    );
  }
}
