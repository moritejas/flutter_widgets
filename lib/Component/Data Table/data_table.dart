import 'package:flutter/material.dart';

class DataTableComponent extends StatelessWidget {
  const DataTableComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: const [
            DataColumn(label: Text('ID')),
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Age')),
          ],
          rows: const [
            DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Text('Alice')),
              DataCell(Text('22')),
            ]),
            DataRow(cells: [
              DataCell(Text('2')),
              DataCell(Text('Bob')),
              DataCell(Text('25')),
            ]),
            DataRow(cells: [
              DataCell(Text('3')),
              DataCell(Text('Charlie')),
              DataCell(Text('30')),
            ]),
          ],
        ),
      ),
    );
  }
}
