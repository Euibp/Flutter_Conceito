import 'package:path/path.dart';

import 'package:sqflite/sqflite.dart';
import 'TestModel.dart';

class DatabaseManager {
  // DatabaseManager._();
  // static final DatabaseManager dataManager = DatabaseManager._();

  static Database _database;

  //Database Initialization
  Future<Database> initDatabase() async{
    //Directory documentsDirectory = await getApplicationDocumentsDirectory(); // função do path_provider
    String documentsDirectory = await getDatabasesPath();
    String path = join(documentsDirectory,"TestDatabase.db");
    return await openDatabase(
      path, 
      version: 1, 
      onOpen: (newDatabase) {},
      onCreate:  (Database newDatabase, int version) async{
        //Sql Code to create a table
        await newDatabase.execute(
          """
          CREATE TABLE Produtos (
          id INTEGER PRIMARY KEY,
          nome TEXT,
          valor TEXT,
          quantidade INTEGER
          )
          """     
        );
      }
    );
    

  }

  void deleteLocalDatabase() async{
    String databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'TestDatabase.db');
    await deleteDatabase(path);
  }
  
  //Function Get or create a Local Database
  Future<Database> get currentDatabase async{
    if(_database != null) return _database;
        
    _database = await initDatabase();
    return _database;
  }

  //Example of Insert
  void newData(Produto newProduto) async{
    final database = await currentDatabase; 
    await database.transaction((transaction) async{
      transaction.insert("Produtos", newProduto.toJson());
    }); 
  }

  

  //Example of get functions
  Future<dynamic> getFromId(int id, String table) async{
    final database = await currentDatabase; 
    var newQuery = await database.query(table,where: "id = ?",whereArgs: [id]);
    return newQuery.isEmpty ? Null : Produto.fromJson(newQuery.first);
  }

  Future<List<Produto>> getAllProduto() async{
    final database = await currentDatabase;  
    var newQuery = await database.query("Produtos");
    List<Produto> list =  newQuery.isEmpty ? [] 
    : newQuery.map((queries)=>Produto.fromJson(queries)).toList();
    return list;

  }

  //Example Function to Delete Table Rows;
  void deleteAll() async{
    final database = await currentDatabase;
    database.rawDelete("DELETE FROM Produtos");
  }

  void deleteFromId(int id,String table) async{
     final database = await currentDatabase;
     database.delete(table,where: "id = ?", whereArgs: [id]);
  }

  //Update


}


