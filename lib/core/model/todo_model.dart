class TodoModel {
  final String id;
  final String description;
  final bool iscomplated;
  TodoModel({
    required this.id,
    required this.description,
    this.iscomplated = false,
  });
}
