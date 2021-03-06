import 'package:flutter/material.dart';

import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: '/',
      routes: getAplicationsRoutes(),
      onGenerateRoute: ( settings ) {
        print('ruta no definida ${settings.name}');
        return MaterialPageRoute(
          builder: ( BuildContext context ) => AlertPage(),
        );
      },
    );
  }
}