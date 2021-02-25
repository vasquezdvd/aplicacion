import 'package:flutter/material.dart';
import 'package:mi_aplicacion/Pages/my_home_page.dart';
import 'package:mi_aplicacion/Pages/second_page.dart';
import 'package:mi_aplicacion/Pages/tree_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        //home: Myhomepage(),
        initialRoute: "/",
        routes: {
          "/": (BuildContext context) {
            return Myhomepage();
          },
          "/second": (BuildContext context) {
            return Secondpage();
          },
          "/three": (BuildContext context) {
            return Threepage();
          }
        });
  }
}
