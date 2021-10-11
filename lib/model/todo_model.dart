class ToDoItem {
  String title;
  String? memo;
  int? createdAt;
  String status;

  ToDoItem(this.title, this.status, [this.memo, this.createdAt]);
}
