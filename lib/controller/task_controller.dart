import 'package:get/get.dart';
import 'package:todo/db/db_helper.dart';
import 'package:todo/model/task.dart';

class TaskController extends GetxController {
  @override
  void onReady() {
    super.onReady();
  }

  Future<int> addTask({Task? task}) async{
    return await DBHelper.insert(task);
  }
}
