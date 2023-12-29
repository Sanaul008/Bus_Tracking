import 'package:bus_tracking/user_Routes&Schedule.dart';
import 'package:bus_tracking/admin_emergency.dart';
import 'package:bus_tracking/admin_notification.dart';
import 'package:bus_tracking/admin_bus_location.dart';
import 'package:flutter/material.dart';

import 'admin_Routes&Schedule Control.dart';

class HomePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _styledButton('Live Location', Colors.blue,context),
            _styledButton('Routes and Schedule', Colors.green, context),
            _styledButton('Notifications', Colors.orange,context),
            _styledButton('Payments', Colors.purple,context),
            _styledButton('Emergency Contact', Colors.red,context),
          ],
        ),
      ),
    );
  }

  Widget _styledButton(String text, Color color, BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10.0),
      child: ElevatedButton(
        onPressed: () {
          if (text == 'Live Location') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DriverLocation()),
            );
          } else if (text == 'Routes and Schedule') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RoutesAndSchedulePages()),
            );
          } else if (text == 'Notifications') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotificationPage()),
            );
          }else if (text == 'Emergency Contact') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EmergencyPage()),
            );
          }
          // Handle button press
          // Implement the logic for each button accordingly
        },
        style: ElevatedButton.styleFrom(
          primary: color,
          onPrimary: Colors.white,
          padding: EdgeInsets.all(20.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}
