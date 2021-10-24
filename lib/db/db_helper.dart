import 'package:sqflite/sqflite.dart';
import 'package:todo/model/task.dart';

class DBHelper {
  static Database? db;
  static int version = 1;
  static String tableName = 'tasks';

  static Future<void> initDb() async {
    if (db != null) {
      return;
    }
    try {
      String path = await getDatabasesPath() + 'tasks.db';
      db = await openDatabase(
          path,
          version: version,
          onCreate: (db, version) {
            print('new one');
            return db.execute(
            "CREATE TABLE $tableName("
                "id INTEGER PRIMARY KEY AUTOINCREMENT"
                "title STRING, note TEXT, data STRING,"
                "startTime STRING,endTime STRING, remind INTEGER,"
                "repeat STRING, color INTEGER, isCompleted INTEGER"
            );
          },
      );
    } catch (e){
      print(e);
    }
  }
  static Future<int> insert(Task? task)async{
    print('AGAA BAGAA');
    return await db?.insert(tableName, task!.toJson())??1;
  }
}
