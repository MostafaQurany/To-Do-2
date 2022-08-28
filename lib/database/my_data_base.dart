import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo2/database/Task.dart';

class MyDatabase{
  static CollectionReference<Task> getTaskCoolection() {
    return FirebaseFirestore.instance
        .collection(Task.collectionName)
        .withConverter<Task>(
        fromFirestore: (snapshot, option) {
          return Task.fromFirestore(snapshot.data()!);
        },
        toFirestore: (task, options) {
          return task.toFirestore();
        });
  }
  static void insertTask(Task task ){
    var taskCollections = getTaskCoolection();
    var taskDoc = taskCollections.doc();
    task.id=taskDoc.id;
    taskDoc.set(task);

  }

  
}