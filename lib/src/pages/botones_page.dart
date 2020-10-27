import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),

          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados(),                
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
      
    );
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0), 
            Color.fromRGBO(35, 37, 57, 1.0)
          ],
          begin: FractionalOffset(0.0, 0.6 ),
          end: FractionalOffset(0.0, 1.0)
        ),
      ),
    );
    final cajaRosa = Transform.rotate(
      angle: -pi/5.0,
      child: Container(
        height: 320.0,
        width: 320.0 ,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(85.0),
          gradient: LinearGradient(
            begin: FractionalOffset(0.0, 1.0 ),
            end: FractionalOffset(1.0, 0.0),
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ]
          )
        ),
      ),
    );
    
    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -100.0,
          left: -20,
          child: cajaRosa
        ),
      ],
    ); 
  }
  Widget _titulos(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classify transaction', style: TextStyle(color: Colors.white, fontSize: 30.0 ,fontWeight: FontWeight.bold,)),
            SizedBox(height: 10.0,),
            Text('Classify this transaction into a particular categories', style: TextStyle(color: Colors.white, fontSize: 18.0),)
          ],
        ),
      ),
    );
  }
  
  Widget _bottomNavigationBar(BuildContext context) {

    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,//icono seleccionado
        textTheme: Theme.of(context).textTheme
          .copyWith( caption: TextStyle( color: Color.fromRGBO(116, 117, 152, 1.0) ) )
      ), //copia del tema actual
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_bus, size: 30.0,),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted, size: 30.0,),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline, size: 30.0,),
            title: Container(),
          ),
        ]
      ),
    );
  }

  Widget _botonesRedondeados(){
    return Table(
      children:[ 
        TableRow(
          children: <Widget>[
            _crearBotonRedondeado(Colors.blue, Icons.border_all, 'General'),
            _crearBotonRedondeado(Colors.purpleAccent, Icons.directions_bus, 'Bus'),
          ],
        ),
        TableRow(
          children: <Widget>[
            _crearBotonRedondeado(Colors.blue, Icons.border_all, 'General'),
            _crearBotonRedondeado(Colors.purpleAccent, Icons.directions_bus, 'Bus'),
          ],
        ),
        TableRow(
          children: <Widget>[
            _crearBotonRedondeado(Colors.blue, Icons.border_all, 'General'),
            _crearBotonRedondeado(Colors.purpleAccent, Icons.directions_bus, 'Bus'),
          ],
        ),
        TableRow(
          children: <Widget>[
            _crearBotonRedondeado(Colors.blue, Icons.border_all, 'General'),
            _crearBotonRedondeado(Colors.purpleAccent, Icons.directions_bus, 'Bus'),
          ],
        ),  
      ]
    );
  }

  Widget _crearBotonRedondeado(Color color, IconData icono, String titulo) {
    return Container(
      height: 160.0,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(height: 5.0,),
          CircleAvatar(
            child: Icon(icono, color: Colors.white, size: 30.0,),
            radius: 30.0,
            backgroundColor: color,
          ),
          Text(titulo,style: TextStyle(color: color),),
          SizedBox(height: 5.0,)
        ],
      ),
    );
  }

}