import 'package:flutter/material.dart';

class RoutesAndSchedulePages extends StatefulWidget {
  @override
  _RoutesAndSchedulePageState createState() => _RoutesAndSchedulePageState();
}

class _RoutesAndSchedulePageState extends State<RoutesAndSchedulePages> {
  List<Map<String, String>> scheduleData = [];

  final TextEditingController startingLocationController =
  TextEditingController();
  final TextEditingController endingLocationController =
  TextEditingController();
  final TextEditingController startingTimeController = TextEditingController();
  final TextEditingController endingTimeController = TextEditingController();
  final TextEditingController driverPhoneNumberController =
  TextEditingController();

  void addEntry() {
    setState(() {
      scheduleData.add({
        'startingLocation': startingLocationController.text,
        'endingLocation': endingLocationController.text,
        'startingTime': startingTimeController.text,
        'endingTime': endingTimeController.text,
        'driverPhoneNumber': driverPhoneNumberController.text,
      });
      resetForm();
    });
  }

  void deleteEntry(int index) {
    setState(() {
      scheduleData.removeAt(index);
    });
  }

  void resetForm() {
    startingLocationController.clear();
    endingLocationController.clear();
    startingTimeController.clear();
    endingTimeController.clear();
    driverPhoneNumberController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routes and Schedule'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: MediaQuery.of(context).size.width,
              minHeight: MediaQuery.of(context).size.height - 50.0, // 50.0 is an arbitrary value for padding and FloatingActionButton
            ),
            child: DataTable(
              columns: [
                DataColumn(label: Text('Starting Location')),
                DataColumn(label: Text('Ending Location')),
                DataColumn(label: Text('Starting Time')),
                DataColumn(label: Text('Ending Time')),
                DataColumn(label: Text('Driver Phone Number')),
                DataColumn(label: Text('Actions')),
              ],
              rows: scheduleData.map((entry) {
                int index = scheduleData.indexOf(entry);
                return DataRow(
                  cells: [
                    DataCell(Text(entry['startingLocation']!)),
                    DataCell(Text(entry['endingLocation']!)),
                    DataCell(Text(entry['startingTime']!)),
                    DataCell(Text(entry['endingTime']!)),
                    DataCell(Text(entry['driverPhoneNumber']!)),
                    DataCell(
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          deleteEntry(index);
                        },
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Add Schedule Entry'),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextField(
                        controller: startingLocationController,
                        decoration:
                        InputDecoration(labelText: 'Starting Location'),
                      ),
                      TextField(
                        controller: endingLocationController,
                        decoration:
                        InputDecoration(labelText: 'Ending Location'),
                      ),
                      TextField(
                        controller: startingTimeController,
                        decoration: InputDecoration(labelText: 'Starting Time'),
                      ),
                      TextField(
                        controller: endingTimeController,
                        decoration: InputDecoration(labelText: 'Ending Time'),
                      ),
                      TextField(
                        controller: driverPhoneNumberController,
                        decoration: InputDecoration(
                            labelText: 'Driver Phone Number'),
                      ),
                    ],
                  ),
                ),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      addEntry();
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