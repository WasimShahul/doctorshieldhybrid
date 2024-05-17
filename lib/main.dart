import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Menu',
      home: MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // User Profile Section
          Container(
            color: Colors.blue,
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage("https://via.placeholder.com/150"),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Wasim",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      "Wasim@ja-secure.com",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Menu Options List
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.history),
                  title: Text('Past Claims'),
                  onTap: () {
                    // Navigate to past claims
                  },
                ),
                ListTile(
                  leading: Icon(Icons.history_toggle_off),
                  title: Text('Past Renewals'),
                  onTap: () {
                    // Navigate to past renewals
                  },
                ),
                ListTile(
                  leading: Icon(Icons.article),
                  title: Text('Past Quotations'),
                  onTap: () {
                    // Navigate to past quotations
                  },
                ),
                ListTile(
                  leading: Icon(Icons.file_download),
                  title: Text('Download Policies'),
                  onTap: () {
                    // Navigate to download policies
                  },
                ),
              ],
            ),
          ),
          // Logout Section
          Container(
            padding: EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: TextButton(
                onPressed: () {
                  // Implement logout functionality
                },
                child: Text('Logout', style: TextStyle(color: Colors.red)),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
