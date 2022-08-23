import 'package:sqflite/sqflite.dart';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'card_modal.dart';

class DBHelper{
  static Database? _database;

  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    }

    _database = await initDatabase();

  }

  initDatabase() async{
    io.Directory documentDirectory = await getApplicationDocumentsDirectory(); 
    String path = join(documentDirectory.path, 'card.db');

    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  _onCreate(Database db, int version) async{
    await db.execute('CREATE TABLE card (id INTEGER PRIMARY KEY, productId VARCHAR UNIQUE,productName TEXT, productPrice INTEGER, initialPrice INTEGER , quantity INTEGER, unitTag TEXT, image TEXT)');
  }

  Future<Card> insert(Card card) async{
    var dbClient = await database;
    await dbClient!.insert('card', card.productToMap());
    return card;
  }
}