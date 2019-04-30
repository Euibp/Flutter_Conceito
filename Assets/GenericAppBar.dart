import 'package:flutter/material.dart';

//abstract class Generic{

AppBar baseAppBar(String title,BuildContext context){
  return AppBar(
      backgroundColor: Colors.blue, 
      title: Text(title),
      elevation: 4.0, 
      centerTitle: true,
      leading: 
      IconButton(
        icon: Icon(Icons.arrow_back),
        tooltip: 'Retornar',
        onPressed: (){
                //print("Volta");
                Navigator.pop(context);
              },  
      ),
  );
}

AppBar tituloAppBar(String title){
  return AppBar(
  backgroundColor: Colors.pink, 
  title: Text(title),
  );
}

//}