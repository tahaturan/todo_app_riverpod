class TodoModel {
  final String id;
  final String description;
  final bool iscomplated;
  TodoModel({
    required this.id,
    required this.description,
    this.iscomplated = false,
  });

  static List<TodoModel> dummyTodo() {
    return [
      TodoModel(id: 'taha', description: 'spor', iscomplated: true),
      TodoModel(id: 'taha', description: 'bilgisayar', iscomplated: true),
      TodoModel(id: 'taha', description: 'fsdfsdf'),
      TodoModel(id: 'taha', description: 'okul', iscomplated: true),
      TodoModel(id: 'taha', description: 'kitap'),
    ];
  }
}
