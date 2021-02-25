import 'package:flutter/material.dart';
import 'package:mi_aplicacion/Pages/second_page.dart';

class Myhomepage extends StatefulWidget {
  @override
  _MyhomepageState createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  final formkey = GlobalKey<FormState>();
  String nombrev;
  String apellidov;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          title: Text('Registro de Usuario'),
        ),
        body: Center(
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: formkey,
                child: Column(
                  children: <Widget>[
                    Image.network(
                      "https://media-exp1.licdn.com/dms/image/C560BAQEYewdmYt0FKQ/company-logo_200_200/0/1606572491636?e=1622073600&v=beta&t=RJAfrBtAcZPcn11vzs59IS7RCmsucdC3JUJ8nrfTDjg",
                      height: 200,
                      width: 200,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.people),
                          labelText: "Nombre",
                          helperText: "Ingrese su nombre",
                          border: OutlineInputBorder()),
                      onSaved: (value) {
                        nombrev = value;
                      },
                      /*                    validator: (value) =>
                          !value.contains('@') ? "Ingrese su nombre" : null, */

                      validator: (String value) {
                        if (value.isEmpty) {
                          return "Ingrese el nombre";
                        }
                        if (value.length <= 2) {
                          return "Ingrese un nombre valido";
                        }

                        return null;
                      },
                    ),
                    Container(
                      height: 20,
                      width: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.face),
                          labelText: "Apellido",
                          helperText: "Ingrese su apellido",
                          border: OutlineInputBorder()),
                      onSaved: (value) {
                        apellidov = value;
                      },
                      validator: (String value) {
                        if (value.isEmpty) {
                          return "Ingrese el nombre";
                        }
                        if (value.length <= 2) {
                          return "Ingrese un nombre apellido valido";
                        }
                        return null;
                      },
                    ),
                    Container(
                      height: 50,
                      width: 50,
                    ),
                    RaisedButton(
                      child: Text("Siguiente"),
                      color: Colors.blue[500],
                      textColor: Colors.white,
                      onPressed: () {
                        showSecondPage(context);
                      },
                    ),
                  ],
                ),
              )),
        ));
  }

  void showSecondPage(BuildContext context) {
    if (formkey.currentState.validate()) {
      formkey.currentState.save();

      Navigator.of(context).pushNamed(
        "/second",
        arguments: SecondPageData(user: this.nombrev, password: this.apellidov),
      );
    }
  }
}
