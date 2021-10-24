class Task {
  int? id;
  int? isComplete;
  int? color;
  int? remind;
  String? title;
  String? note;
  String? startTime;
  String? endTime;
  String? repeat;
  String? date;

  Task(
      {this.id,
      this.isComplete,
      this.color,
      this.remind,
      this.title,
      this.note,
      this.startTime,
      this.endTime,
      this.repeat,
      this.date});

  Task.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    isComplete = json['isComplete'];
    color = json['color'];
    remind = json['remind'];
    title = json['title'];
    note = json['note'];
    startTime = json['startTime'];
    endTime = json['endTime'];
    repeat = json['repeat'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] =this.id;
    data['isComplete'] = this.isComplete;
    data['color'] = this.color;
    data['remind'] = this.remind;
    data['title'] = this.title;
    data['note'] = this.note;
    data['startTime'] = this.startTime;
    data['endTime'] = this.endTime;
    data['repeat'] = this.repeat;
    data['date'] = this.date;
    return data;
  }
}
