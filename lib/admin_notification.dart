import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List<String> notificationList = [];

  final TextEditingController notificationController = TextEditingController();

  void addNotification() {
    setState(() {
      notificationList.add(notificationController.text);
      resetForm();
    });
  }

  void deleteNotification(int index) {
    setState(() {
      notificationList.removeAt(index);
    });
  }

  void resetForm() {
    notificationController.clear();
  }

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
            Expanded(
              child: ListView.builder(
                itemCount: notificationList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(notificationList[index]),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          deleteNotification(index);
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Add Notification'),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextField(
                        controller: notificationController,
                        decoration: InputDecoration(labelText: 'Notification'),
                      ),
                    ],
                  ),
                ),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      addNotification();
                      Navigator.of(context).pop();
                    },
                    child: Text('Add'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Cancel'),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
