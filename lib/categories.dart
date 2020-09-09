import 'package:flutter/material.dart';
import 'package:practice_supermax/main.dart';

// Aquí añado la categoría que aparece ya sean frutas y vegetales, carnes, etc.

class Menu extends StatelessWidget{

  static const List<String> _categorias = [

    'Frutas y Vegetales',
    'Carnes y Mariscos',
    'Provisiones',
    'Lácteos',
    'Hogar, Salud y Belleza',
    'Deli y Bakery',
    'Orgánico',
    'Mascotas',
    'Licores',
  ];

  const Menu();

  Widget _flatButtonBuilder(){
    return ListView.separated(

      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
       return FlatButton(
          onPressed: (){},
          textColor: Colors.green[900],
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: Text(
            _categorias[index],
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
      itemCount: _categorias.length,
      separatorBuilder: (BuildContext context, int index) => const Divider(indent: 10.0,),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[900],
      height: 55,
      child: _flatButtonBuilder(),
    );
  }

}