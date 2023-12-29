import 'package:bus_tracking/user_Emergency_Contact.dart';
import 'package:bus_tracking/user_Notifications.dart';
import 'package:bus_tracking/user_Routes&Schedule.dart';
import 'package:bus_tracking/user_bus_track.dart';
import 'package:bus_tracking/user_payment.dart';
import 'package:flutter/material.dart';

class TransportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transport Features'),
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
              MaterialPageRoute(builder: (context) => BusTrack()),
            );
          }else if (text == 'Routes and Schedule') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RoutesAndSchedulePage()),
            );
          }else if (text == 'Notifications') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotificationPages()),
            );
          }else if (text == 'Payments') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PaymentWays()),
            );
          } else if (text == 'Emergency Contact') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EmergencyPages()),
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
