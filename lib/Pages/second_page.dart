import 'package:flutter/material.dart';
import 'package:mi_aplicacion/Pages/tree_page.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({Key key}) : super(key: key);

  @override
  _SecondpageState createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  final formkey = GlobalKey<FormState>();
  String vfecha;
  String vdir;
  double num;
  double num1;
  double num2;
  String vdir1;
  @override
  Widget build(BuildContext context) {
    SecondPageData arguments = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(title: Text("Información Secundaria")),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: formkey,
              child: Column(
                children: <Widget>[
                  Image.network(
                    "https://media-exp1.licdn.com/dms/image/C560BAQEYewdmYt0FKQ/company-logo_200_200/0/1606572491636?e=1622073600&v=beta&t=RJAfrBtAcZPcn11vzs59IS7RCmsucdC3JUJ8nrfTDjg",
                    height: 100,
                    width: 100,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.calendar_today),
                        labelText: "Ingrese fecha de nacimiento (AAAA-MM-DD)",
                        helperText: "Ingrese la Fecha de nacimiento",
                        border: OutlineInputBorder()),
                    onSaved: (value) {
                      vfecha = value;
                    },
                    /*                    validator: (value) =>
                        !value.contains('@') ? "Ingrese su nombre" : null, */

                    validator: (String value) {
                      num = 0;
                      if (value.length != 10 ||
                          !value.contains("-") ||
                          value.contains("&") ||
                          value.contains("+") ||
                          value.contains(":") ||
                          value.contains(";") ||
                          value.contains("!") ||
                          value.contains("/") ||
                          value.contains("(")) {
                        num = 1;
                        return "Ingrese Fecha de nacimiento valida";
                      }
                      if (value.isEmpty) {
                        num = 1;
                        return "Ingrese fecha de nacimiento";
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
                        labelText:
                            "Ingrese su dirección 1 de la forma calle__ # __-__",
                        icon: Icon(Icons.format_list_numbered),
                        helperText: "Ingrese su dirección 1 ",
                        border: OutlineInputBorder()),
                    onSaved: (value) {
                      vdir = value;
                    },
                    validator: (String value) {
                      num1 = 0;
                      if (!value.contains("calle") ||
                          !value.contains("-") ||
                          !value.contains("#")) {
                        num1 = 1;
                        return "Ingrese Direccion Valida";
                      }
                      if (value.isEmpty) {
                        num1 = 1;
                        return "Ingrese direccion Fisica 2";
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
                        labelText:
                            "Ingrese su dirección 2 de la forma calle__ # __-__",
                        icon: Icon(Icons.format_list_numbered),
                        helperText: "Ingrese su dirección 2 ",
                        border: OutlineInputBorder()),
                    onSaved: (value) {
                      vdir1 = value;
                    },
                    validator: (String value) {
                      num2 = 0;
                      if (!value.contains("calle") ||
                          !value.contains("-") ||
                          !value.contains("#")) {
                        num2 = 1;
                        return "Ingrese Direccion Valida";
                      }
                      if (value.isEmpty) {
                        num2 = 1;
                        return "Ingrese direccion Fisica 2";
                      }
                      return null;
                    },
                  ),
                  Container(
                    height: 50,
                    width: 50,
                  ),
                  RaisedButton(
                    child: Text("Crear usuario"),
                    color: Colors.blue[500],
                    textColor: Colors.white,
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text("Confirmación"),
                          content:
                              Text("Esta seguro que desea crear el usuario"),
                          actions: <Widget>[
                            FlatButton(
                                child: Text("OK"),
                                onPressed: () {
                                  Navigator.of(context).pop("OK");
                                  showThreePage(context);
                                }),
                            FlatButton(
                                child: Text("Cancel"),
                                onPressed: () {
                                  Navigator.of(context).pop("NOK");
                                })
                          ],
                        ),
                      ).then((value) {
                        print(value);
                        if (value == "OK" &&
                            num == 0 &&
                            num1 == 0 &&
                            num2 == 0) {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                      title: Text("EXITO"),
                                      content:
                                          Text("El usuario se creo con exito"),
                                      actions: <Widget>[
                                        FlatButton(
                                            child: Text("OK"),
                                            onPressed: () {
                                              Navigator.of(context).pop("OK");
                                              showThreePage(context);
                                            }),
                                      ])).then((value) {
                            if (value == "OK") {
                              showThreePage(context);
                            }
                          });
                        }
                        if (value == "OK" && num == 1 ||
                            value == "OK" && num1 == 1 ||
                            value == "OK" && num2 == 1) {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                      title: Text("ERROR"),
                                      content: Text("Revise la informacion"),
                                      actions: <Widget>[
                                        FlatButton(
                                            child: Text("OK"),
                                            onPressed: () {
                                              Navigator.of(context).pop("OK");
                                              showThreePage(context);
                                            }),
                                      ])).then((value) {
                            if (value == "OK") {
                              showThreePage(context);
                            }
                          });
                        }
                      });
                    },
                  ),
                  /* Text(arguments.user) */
                ],
              ),
            )));
  }

  showThreePage(BuildContext context) {
    SecondPageData arguments1 = ModalRoute.of(context).settings.arguments;
    if (formkey.currentState.validate()) {
      formkey.currentState.save();
      Navigator.of(context).pushNamed(
        "/three",
        arguments: ThreepageData(
            nombre: arguments1.user,
            apellido: arguments1.password,
            fecha: vfecha,
            dir: vdir,
            dir1: vdir1),
      );
    }
  }
}

class SecondPageData {
  String user;
  String password;
  SecondPageData({this.user, this.password});
}
