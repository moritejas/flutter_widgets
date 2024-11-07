import 'package:flutter/material.dart';

class DataTableComponent extends StatefulWidget {
  const DataTableComponent({super.key});

  @override
  _DataTableComponentState createState() => _DataTableComponentState();
}

class _DataTableComponentState extends State<DataTableComponent> {
  // List to track which rows are selected
  List<bool> selectedRows = List.generate(20, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Table Example'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal, // Scrolls horizontally to handle wide data tables
        child: DataTable(
          sortColumnIndex: 0, // Index of the column to sort by (0 for first column)
          sortAscending: true, // Whether the sorting is in ascending order
          headingRowHeight: 56.0, // Height of the heading row
          dataRowHeight: 48.0, // Height of the data rows
          headingTextStyle: const TextStyle(
            fontWeight: FontWeight.bold, // Style for column headings
            fontSize: 16,
            color: Colors.blue, // Color of the heading text
          ),
          dataTextStyle: const TextStyle(
            fontSize: 14,
            color: Colors.black, // Color of the data text
          ),
          columnSpacing: 20.0, // Spacing between columns
          horizontalMargin: 24.0, // Horizontal margin around the table
          columns: const [
            DataColumn(label: Text('ID'), numeric: true),
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Age'), numeric: true),
          ],
          rows: List<DataRow>.generate(
            20, // Change this to the number of rows you want
                (index) => DataRow(
              selected: selectedRows[index], // Use selected state for each row
              onSelectChanged: (isSelected) {
                setState(() {
                  selectedRows[index] = isSelected ?? false;
                });
              },
              cells: [
                DataCell(Text('${index + 1}')),
                DataCell(Text('Name ${index + 1}')),
                DataCell(Text('${20 + index}')), // Example age
              ],
            ),
          ),
          showCheckboxColumn: false, // Remove default checkbox column
          showBottomBorder: true, // Display a bottom border for the table
          dividerThickness: 1.0, // Thickness of the divider lines between rows
          onSelectAll: (bool? selected) {
            setState(() {
              for (int i = 0; i < selectedRows.length; i++) {
                selectedRows[i] = selected ?? false;
              }
            });
          },
        ),
      ),
    );
  }
}
