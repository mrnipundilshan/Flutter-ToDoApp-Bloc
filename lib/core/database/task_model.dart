class Task {
  final int? id;
  final String title;
  final String description;

  Task({this.id, required this.title, required this.description});

  //Takes your Task object and turns it into a Map that SQLite understands.
  Map<String, dynamic> toMap() {
    return {'id': id, 'title': title, 'description': description};
  }

  //A factory constructor creates a new Task from raw Map data (coming from SQLite).
  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'],
      title: map['title'],
      description: map['description'],
    );
  }
}
