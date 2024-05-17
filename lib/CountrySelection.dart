import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Country Selector',
      home: CountrySelectionScreen(),
    );
  }
}

class CountrySelectionScreen extends StatefulWidget {
  @override
  _CountrySelectionScreenState createState() => _CountrySelectionScreenState();
}

class _CountrySelectionScreenState extends State<CountrySelectionScreen> {
  TextEditingController _searchController = TextEditingController();
  List<String> _allCountries = [
    'United States',
    'Canada',
    'Australia',
    'India',
    'Brazil',
    'France',
    'Germany',
    // Add more countries as needed
  ];
  List<String> _filteredCountries = [];

  @override
  void initState() {
    super.initState();
    _filteredCountries = _allCountries;
  }

  void _filterCountries(String enteredKeyword) {
    List<String> results = [];
    if (enteredKeyword.isEmpty) {
      results = _allCountries;
    } else {
      results = _allCountries
          .where((country) =>
          country.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _filteredCountries = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select a Country'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search for a country...',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.search),
              ),
              onChanged: (value) => _filterCountries(value),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredCountries.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_filteredCountries[index]),
                  onTap: () {
                    // Handle country selection
                    print('Selected: ${_filteredCountries[index]}');
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
