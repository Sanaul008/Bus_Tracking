import 'package:flutter/material.dart';

class NotificationPages extends StatelessWidget {
  final List<String> notificationList = ["Abdullapur Bus will come at 8.30 today", "Gazipur Bus will not come today"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            for (String notification in notificationList)
              Card(
                child: ListTile(
                  title: Text(notification),
                  // No trailing delete button
                ),
              ),
          ],
        ),
      ),
    );
  }
}
