import 'package:flutter/material.dart';

class DriverLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bus Location'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Add navigation logic here to go back
              Navigator.pop(context,'admin_home');
            },
          ),
        ),
        body: Center(
          child: Image.asset('assets/driver_home.png'),
        ),
      ),
    );
  }
}
