import 'package:flutter/material.dart';

class EmergencyPage extends StatefulWidget {
  @override
  _EmergencyPageState createState() => _EmergencyPageState();
}

class _EmergencyPageState extends State<EmergencyPage> {
  List<String> emergencyNumberList = [];

  final TextEditingController emergencyNumberController = TextEditingController();

  void addEmergencyNumber() {
    setState(() {
      emergencyNumberList.add(emergencyNumberController.text);
      resetForm();
    });
  }

  void deleteEmergencyNumber(int index) {
    setState(() {
      emergencyNumberList.removeAt(index);
    });
  }

  void resetForm() {
    emergencyNumberController.clear();
  }

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
            Expanded(
              child: ListView.builder(
                itemCount: emergencyNumberList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(emergencyNumberList[index]),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          deleteEmergencyNumber(index);
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
                title: Text('Add Emergency Number'),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextField(
                        controller: emergencyNumberController,
                        decoration: InputDecoration(labelText: 'Emergency Number'),
                      ),
                    ],
                  ),
                ),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      addEmergencyNumber();
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
