import 'package:flutter/material.dart';

class Producto extends StatelessWidget{

  final String _nombreProducto;
  final int _cantidad;
  final Icon _fotoProducto;
  final double _precio;
  int _cantidadCarrito;

  Producto(this._fotoProducto, this._nombreProducto, this._cantidad, this._precio);

  static const List<String> nombre = [
    'KNORR SOFRITO CRIOLLO',
    'KNORR SAZON CULANTRO',
    'KNORR ADOBO',
    'ADVIL PM CAPLETS',
    'ADVIL LIQUID GELS',
    'ADVIL TABLETS',
    'MANZANAS VERDES',
    'JAMON CON GUAYABA',
    'CHULETAS DE POLLO',
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 110,
      color: Colors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _fotoProducto,
          Text(
            _nombreProducto,
            style: TextStyle(
              color: Colors.lightGreen[700],
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            '$_cantidad CT',
            style: TextStyle(
              fontSize: 13.0,
            ),
          ),
          Text(
            '\$$_precio',
            style: TextStyle(
              fontSize: 13.0,
            ),
          ),
        ],
      ),
    );
  }
}