import 'package:flutter/material.dart';

class RoutesAndSchedulePage extends StatelessWidget {
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
              minHeight: MediaQuery.of(context).size.height - 50.0,
            ),
            child: DataTable(
              columns: [
                DataColumn(label: Text('Starting Location')),
                DataColumn(label: Text('Ending Location')),
                DataColumn(label: Text('Starting Time')),
                DataColumn(label: Text('Ending Time')),
                DataColumn(label: Text('Driver Phone Number')),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('Gazipur bypass')),
                  DataCell(Text('GUB Campus')),
                  DataCell(Text('9:00 AM')),
                  DataCell(Text('11:00 AM')),
                  DataCell(Text('123-456-7890')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Narshandi')),
                  DataCell(Text('GUB Campus')),
                  DataCell(Text('10:30 AM')),
                  DataCell(Text('1:00 PM')),
                  DataCell(Text('987-654-3210')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Mirpur')),
                  DataCell(Text('GUB Campus')),
                  DataCell(Text('1:00 PM')),
                  DataCell(Text('3:30 PM')),
                  DataCell(Text('555-555-5555')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Narayanganj')),
                  DataCell(Text('GUB Campus')),
                  DataCell(Text('3:45 PM')),
                  DataCell(Text('6:00 PM')),
                  DataCell(Text('111-222-3333')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Gausiya')),
                  DataCell(Text('GUB Campus')),
                  DataCell(Text('3:45 PM')),
                  DataCell(Text('6:00 PM')),
                  DataCell(Text('111-222-3333')),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
