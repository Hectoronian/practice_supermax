// Practicando codificar la pantalla principal de Supermax en Flutter
// Link de la aplicacion de Supermax Online: https://play.google.com/store/apps/details?id=com.supermaxonline.supermaxonline&hl=en
// La codificacion va a ser interactiva, voy a intentar solamente la pantalla principal, sin brincar a otro "router"

import 'package:flutter/material.dart';
import 'package:practice_supermax/categories.dart';
import 'package:practice_supermax/producto.dart';

void main(){
  runApp(MercadoFamiliar());
}

class MercadoFamiliar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.lightGreen[700],
      ),
      home: Scaffold(
        appBar: AppBar(
            //shadowColor: Colors.transparent,
              leading: Icon(
                Icons.fastfood,
                size: 40.0,
                color: Colors.deepOrangeAccent,
              ),
              title: const Text( //TODO buscar la manera de mover el text un poco a la izquierda
                'SuperMax',
                style: TextStyle( //TODO Bajar el texto por 20.0 (padding)
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ), //TODO Añadir el texto "online" debajo de el titulo
              ),
              actions: [
                IconButton(
                  tooltip: 'Buscar',
                  //splashRadius: 20.0,
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onPressed: (){},
                ),
                FlatButton(
                  highlightColor: ThemeData.light().highlightColor,
                    onPressed: (){},
                    child: Row(
                      children: [
                        Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                            size: 26.0,
                          ),
                        Text(
                          '\$0.95',
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
              ],
            ),
        body: Column(
          children: [
            Menu(),
            Container(
              alignment: AlignmentDirectional.bottomStart,
              child: Row(
                children: <Widget>[
                  Producto(
                      Icon(
                    Icons.fastfood,
                        size: 50.0,
                  ),
                      Producto.nombre[0], 4, 1.23),
                ],
              ),
            ),
            //TODO template para listado de productos
            // Promocion(nivel: 1, nombreDePromo: "Knor", listaDeProductos(Lista))
          ],
        ),
      ),
    );
  }
}