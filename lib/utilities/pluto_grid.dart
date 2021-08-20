import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

class Pluto extends StatefulWidget {
  late List<PlutoColumn> columns;
  late List<PlutoRow> rows;
  String title;
  Pluto(
    this.columns,
    this.rows,
    this.title,
  ) {
    // ignore: prefer_initializing_formals
    this.columns = columns;
    // ignore: prefer_initializing_formals
    this.rows=rows;
    this.title = title;
  }
  RoutinesState createState() => RoutinesState();
}

class RoutinesState extends State<Pluto> {
  @override
  Widget build(BuildContext context) {
    return PlutoGrid(
            columns: widget.columns,
            rows: widget.rows,
            onChanged: (PlutoGridOnChangedEvent event) {
              print(event);
            },
            onLoaded: (PlutoGridOnLoadedEvent event) {
              print(event);
            });
    
    // Scaffold(
    //   // appBar: AppBar(
    //   //   title: const Text('Baby & Baba'),
    //   // ),
    //   body: 
    // );
  }
}
