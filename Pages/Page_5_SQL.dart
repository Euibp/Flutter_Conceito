import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_app/Models/Database.dart';
import 'package:flutter_app/Models/TestModel.dart';
//import 'package:sqflite/sqflite.dart';
//import 'package:flutter_app/Assets/HeaderAssets.dart';

class SQLTeste extends StatefulWidget {
  @override
  _SQLTesteState createState() => _SQLTesteState();
}

class _SQLTesteState extends State<SQLTeste> {
  DatabaseManager dataManager = DatabaseManager();
  //DatabaseManager dataManager = DatabaseManager.dataManager;

  List<Produto> testProdutos = [
    Produto(nome: "Martelo", valor: "10", quantidade: 10),
    Produto(nome: "Machado", valor: "10", quantidade: 10),
    Produto(nome: "Maçarico", valor: "10", quantidade: 6),
    Produto(nome: "Macaco", valor: "10", quantidade: 10),
    Produto(nome: "Molho", valor: "10", quantidade: 10),
  ];

  @override
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter SQLite"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.delete),
            onPressed:()async {
              dataManager.deleteAll();
              setState(() {});
            }
          ),
          IconButton(
            icon: Icon(Icons.accessibility_new),
            onPressed:()async {
              //Produto text = dataManager.getFromId(1, Produto.fromJson, 'Produtos') as Produto;
              //print(text.nome);
              setState(() {
                dataManager.deleteLocalDatabase();
              });
            }
          ),
        ],
        ),
      body: FutureBuilder<List<Produto>>(
        future: dataManager.getAllProduto(),
        builder: (BuildContext context, snapshot) {
          //print(snapshot);
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                Produto item = snapshot.data[index];
                return Dismissible(
                  key: UniqueKey(),
                  background: Container(color: Colors.orangeAccent,),
                  onDismissed: (DismissDirection horizontal){
                    dataManager.deleteFromId(item.id, 'Produtos');
                  },
                    child: ListTile(
                    title: Text(item.nome),
                    leading: Text(item.id.toString()),
                    trailing: Checkbox(
                      onChanged: (bool value) {
                        //dataManager.blockClient(item);
                        setState(() {});
                      },
                      value: true,
                    ),
                  ),
                );
              },
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          Produto rnd = testProdutos[Random().nextInt(testProdutos.length)];
          await dataManager.newData(rnd);
          setState(() {});
        },
      ),
      
    );
}
}