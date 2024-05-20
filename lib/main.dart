import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interactive Slide Bar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Interactive Slide Bar Example'),
        // Adding a menu icon to the app bar
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                // Open the slide bar when the menu icon is tapped
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                // Handle the tap on the profile item
                // For example, navigate to the profile page
                Navigator.pop(context); // Close the slide bar
                // Add your navigation logic here
              },
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('Password'),
              onTap: () {
                // Handle the tap on the password item
                // For example, navigate to the password page
                Navigator.pop(context); // Close the slide bar
                // Add your navigation logic here
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () {
                // Handle the tap on the logout item
                // For example, log out the user and navigate to the login page
                Navigator.pop(context); // Close the slide bar
                // Add your logout logic here
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Welcome to the Interactive Slide Bar Example!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
