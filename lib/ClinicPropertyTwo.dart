import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expandable Options',
      home: ExpandableOptionsScreen(),
    );
  }
}

class ExpandableOptionsScreen extends StatefulWidget {
  @override
  _ExpandableOptionsScreenState createState() => _ExpandableOptionsScreenState();
}

class _ExpandableOptionsScreenState extends State<ExpandableOptionsScreen> {
  Map<String, bool> _isExpanded = {
    'Building': false,
    'Stock-in-Trade': false,
    'Plant & Machinery': false,
    'Furniture, Fixtures, Fittings, Renovation & Contents': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Insurance Details'),
      ),
      body: ListView(
        children: _isExpanded.keys.map((String key) => _buildItem(key)).toList(),
      ),
    );
  }

  Widget _buildItem(String title) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ExpansionTile(
        leading: Icon(Icons.domain), // Placeholder icon
        title: Text(title), // Actual title
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Sum Insured',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Architects, Surveyors, and Consultants Fees (optional)',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _isExpanded[title] = !_isExpanded[title]!;
                    });
                  },
                  child: Text(_isExpanded[title]! ? 'REMOVE' : 'ADD'),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white, // Changed from primary to foregroundColor
                    backgroundColor: Colors.blue,
                  ),
                ),
                // You can add more fields here based on the second image details
              ],
            ),
          ),
        ],
        onExpansionChanged: (bool expanded) {
          setState(() {
            _isExpanded[title] = expanded;
          });
        },
      ),
    );
  }
}
