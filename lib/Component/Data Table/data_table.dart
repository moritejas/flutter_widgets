import 'package:flutter/material.dart';

class DataTableComponent extends StatelessWidget {
  const DataTableComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Table Example'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        // scrollDirection: Axis.vertical,
        child: DataTable(
          sortColumnIndex: 0, // Index of the column to sort by
          sortAscending: true, // Whether the sorting is ascending
          columns: const [
            DataColumn(label: Text('ID'), numeric: true),
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Age'), numeric: true),
          ],
          rows: List<DataRow>.generate(
            20, // Change this to the number of rows you want
                (index) => DataRow(
              cells: [
                DataCell(Text('${index + 1}')),
                DataCell(Text('Name ${index + 1}')),
                DataCell(Text('${20 + index}')), // Example age
              ],
            ),
          ),
        ),
      ),
    );
  }
}
