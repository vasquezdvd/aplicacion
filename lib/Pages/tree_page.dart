import 'package:flutter/material.dart';

class Threepage extends StatefulWidget {
  Threepage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _ThreepageState createState() => _ThreepageState();
}

class _ThreepageState extends State<Threepage> {
  @override
  Widget build(BuildContext context) {
    ThreepageData arguments = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Text("Informacion del Usuario"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: <Widget>[
          Image.network(
            "https://media-exp1.licdn.com/dms/image/C560BAQEYewdmYt0FKQ/company-logo_200_200/0/1606572491636?e=1622073600&v=beta&t=RJAfrBtAcZPcn11vzs59IS7RCmsucdC3JUJ8nrfTDjg",
            height: 200,
            width: 200,
          ),
          Container(
            height: 40,
            width: 40,
          ),
          Row(children: <Widget>[
            Icon(Icons.people),
            Expanded(
              child: Text("Nombre"),
            ),
            Text(arguments.nombre),
          ]),
          Container(
            height: 20,
            width: 20,
          ),
          Divider(),
          Row(children: <Widget>[
            Icon(Icons.face),
            Expanded(
              child: Text(
                "Apellido",
              ),
            ),
            Text(arguments.apellido),
          ]),
          Container(
            height: 20,
            width: 20,
          ),
          Divider(),
          Row(children: <Widget>[
            Icon(Icons.calendar_today),
            Expanded(
              child: Text("Fecha de nacimiento"),
            ),
            Text(arguments.fecha),
          ]),
          Container(
            height: 20,
            width: 20,
          ),
          Divider(),
          Row(children: <Widget>[
            Icon(Icons.one_k_plus),
            Expanded(
              child: Text("Direccion 1"),
            ),
            Text(arguments.dir),
          ]),
          Container(
            height: 20,
            width: 20,
          ),
          Divider(),
          Row(children: <Widget>[
            Icon(Icons.two_k_plus),
            Expanded(
              child: Text("Direccion 2"),
            ),
            Text(arguments.dir1),
          ]),
        ]),
      ),
    );
  }
}

class ThreepageData {
  String nombre;
  String apellido;
  String fecha;
  String dir;
  String dir1;
  ThreepageData({this.nombre, this.apellido, this.fecha, this.dir, this.dir1});
}
