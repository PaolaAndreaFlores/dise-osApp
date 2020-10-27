import 'package:disenos/src/pages/basico_page.dart';
import 'package:disenos/src/pages/botones_page.dart';
import 'package:disenos/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //cambiar el estilo de la barra de notificaciones
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
    //   systemNavigationBarDividerColor: Colors.white
    // ));


    return MaterialApp(
      title: 'Diseños',
      debugShowCheckedModeBanner: false,
      initialRoute: 'scroll',
      routes: {
        'basico'    : (BuildContext context ) => BasicoPage(),
        'scroll'    : (BuildContext context ) => ScrollPage(),
        'botones'   : (BuildContext context ) => BotonesPage(),
      },
      
    );
  }
}