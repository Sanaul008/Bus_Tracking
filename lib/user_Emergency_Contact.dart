import 'package:flutter/material.dart';

class EmergencyPages extends StatelessWidget {
  final List<String> emergencyNumberList = ["01600445154", "01812967704","01878681589"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency Number List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            for (String emergencyNumber in emergencyNumberList)
              Card(
                child: ListTile(
                  title: Text(emergencyNumber),
                  // No trailing delete button
                ),
              ),
          ],
        ),
      ),
    );
  }
}
