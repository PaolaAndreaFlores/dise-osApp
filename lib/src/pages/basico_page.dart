import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold );
  final estiloSubTitulo = TextStyle( fontSize: 18.0, color: Colors.grey );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crarImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      )
    );
  }
  Widget _crarImagen(){
    return Container(
      width: double.infinity,
      child: Image(image: NetworkImage('https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
      height: 200.0,
      fit: BoxFit.cover,
      )
    );
  }
  Widget _crearTitulo(){
    return SafeArea(//en caso de  una barra que moleste el texto
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0 ),
        child: Row(
          children: <Widget>[
            Expanded (
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Lago con puente', style: estiloTitulo,),
                  SizedBox(height: 7.0,),
                  Text('Un lago en Alemania', style: estiloSubTitulo,)
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0,),
            Text('41', style: TextStyle(fontSize: 20.0),)
          ],
        ),
      ),
    );
  }
  Widget _crearAcciones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE'),
      ],
    );
  }
  Widget _accion(IconData icon, String texto){
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0,),
        SizedBox(height: 5.0 ),
        Text(texto, style: TextStyle(color: Colors.blue, fontSize: 15.0),)
      ],
    );
  }
  Widget _crearTexto(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical:20.0),
      child: Text('El paisaje, desde el punto de vista geográfico, es el objeto de estudio primordial y el documento geográfico básico a partir del cual se hace la geografía. En general, se entiende por paisaje cualquier área de la superficie terrestre producto de la interacción de los diferentes factores presentes en ella y que tienen un reflejo visual en el espacio. El paisaje geográfico es por tanto el aspecto que adquiere el espacio geográfico. El paisaje, desde el punto de vista artístico, sobre todo pictórico, es la representación gráfica de un terreno extenso. Con el mismo significado se utiliza el término país (no debe confundirse con el concepto político de país). El paisaje también puede ser el objeto material a crear o modificar por el arte mismo.',
      textAlign: TextAlign.justify,)
      );
  }
}