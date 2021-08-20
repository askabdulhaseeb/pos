import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';
import '../../../utilities/pluto_grid.dart';

class PlutoMain extends StatefulWidget {
  @override
  RoutinesState createState() => RoutinesState();
}

class RoutinesState extends State<PlutoMain> {
  @override
  String title = "Baby & Baba";
  List<PlutoColumn> columns = [
    /// Text Column definition
    PlutoColumn(
      title: 'Barcode',
      field: 'Barcode',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Name',
      field: 'name',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Seller',
      field: 'seller',
      type: PlutoColumnType.text(),
    ),

    /// Number Column definition
    PlutoColumn(
      title: 'Unit Price',
      field: 'unit',
      type: PlutoColumnType.number(),
    ),

    PlutoColumn(
      title: 'Quantity',
      field: 'quantity',
      type: PlutoColumnType.number(),
    ),

    PlutoColumn(
      title: 'Total',
      field: 'number_field',
      type: PlutoColumnType.number(),
    ),
  ];

  List<PlutoRow> rows = [
    PlutoRow(
      cells: {
        'Barcode': PlutoCell(value: 'Text cell value1'),
        'name': PlutoCell(value: 'Pant'),
        'seller': PlutoCell(value: 'Pant'),
        'unit': PlutoCell(value: 5000),
        'quantity': PlutoCell(value: 5000),
        'number_field': PlutoCell(value: 5000),
      },
    ),
    // PlutoRow(
    //   cells: {
    //     'text_field': PlutoCell(value: 'Text cell value2'),
    //     'number_field': PlutoCell(value: 2021),
    //     'select_field': PlutoCell(value: 'item2'),
    //     'date_field': PlutoCell(value: '2020-08-07'),
    //     'time_field': PlutoCell(value: '18:45'),
    //   },
    // ),
    // PlutoRow(
    //   cells: {
    //     'text_field': PlutoCell(value: 'Text cell value3'),
    //     'number_field': PlutoCell(value: 2022),
    //     'select_field': PlutoCell(value: 'item3'),
    //     'date_field': PlutoCell(value: '2020-08-08'),
    //     'time_field': PlutoCell(value: '23:59'),
    //   },
    // ),
  ];
  Widget build(BuildContext context) {
    rows.add(PlutoRow(cells: {
      'Barcode': PlutoCell(value: 'Barcode 2'),
      'name': PlutoCell(value: 'Child Pant'),
      'seller': PlutoCell(value: 'New Seller'),
      'unit': PlutoCell(value: 5000),
      'quantity': PlutoCell(value: 5000),
      'number_field': PlutoCell(value: 5000),
    }));
    // columns.add(PlutoColumn(title: 'title', field: 'title', type: PlutoColumnType.text()));
    return  Pluto(columns, rows, title);
  
  }
}
