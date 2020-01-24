import 'package:flutter/material.dart';
class Todo {
  Todo({this.title, this.isDone = false});
  String title;
  bool isDone;
}
class NewTodoDialog extends StatelessWidget {

  final controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      title: Text('New todo'),
      content: TextField(
        controller: controller,
        autofocus: true,
      ),
      actions: <Widget>[
        FlatButton(
          child: Text('Add New'),
          onPressed: () {
            final todo = new Todo(title: controller.value.text);
            if (controller.value.text == "") {
              print("");
            }else{
              Navigator.of(context).pop(todo);
            }
          },
        ),
        FlatButton(
          child: Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
            controller.clear();
          },
        ),
      ],
    );
  }
}