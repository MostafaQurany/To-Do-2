class Task {
  static const String collectionName = "tasks";
  String? id;
  String? title;
  String? description;
  DateTime? dataTime;
  bool? isDone;

  Task({this.id, this.dataTime, this.description, this.isDone, this.title});
  Task.fromFirestore(Map<String ,dynamic> data):this(
    id: data['id'],
    dataTime: DateTime.fromMicrosecondsSinceEpoch(data['dataTime']) ,
    description:data['description'],
    isDone: data['isDone'],
    title: data['title']
  );
  Map<String,dynamic> toFirestore(){
    return{
      'id':id,
      'description':description,
      'title':title,
      'isDone':isDone,
      'dataTime':dataTime?.microsecondsSinceEpoch,
    };
  } 
}

