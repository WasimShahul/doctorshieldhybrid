import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Service Details Popup',
      home: ServiceDetailsScreen(),
    );
  }
}

class ServiceDetailsScreen extends StatefulWidget {
  @override
  _ServiceDetailsScreenState createState() => _ServiceDetailsScreenState();
}

class _ServiceDetailsScreenState extends State<ServiceDetailsScreen> {
  @override
  void initState() {
    super.initState();
    // Show the popup as soon as the state is initialized and widget built
    WidgetsBinding.instance.addPostFrameCallback((_) => _showServiceDetailsPopup(context));
  }

  void _showServiceDetailsPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppBar(
                automaticallyImplyLeading: false,
                title: Text('SERVICE DETAILS'),
                actions: [
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      title: Text('Specialization'),
                      trailing: Text('Percentage(%)'),
                    ),
                    ...List.generate(10, (index) => _buildSpecializationItem()), // Assuming we have 10 items
                  ],
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Close'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Reset Logic
                    },
                    child: Text('Reset'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Submit Logic
                    },
                    child: Text('Submit'),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Total: 0 %'), // Replace with actual total calculation
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSpecializationItem() {
    return ListTile(
      title: Text('Specialization Name'), // Replace with actual data
      trailing: Container(
        width: 80,
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: '%',
          ),
          // onChanged: (value) => setState(() {}), // Update the total % accordingly
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Main Screen')),
    );
  }
}
