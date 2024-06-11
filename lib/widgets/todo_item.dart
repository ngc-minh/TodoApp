import 'package:flutter/material.dart';
import '../model/todo.dart'; // Import mô hình ToDo
import '../constants/colors.dart'; // Import các hằng số màu sắc

class ToDoItem extends StatelessWidget {
  final ToDo todo; // Đối tượng ToDo
  final Function onToDoChanged; // Hàm callback khi thay đổi trạng thái
  final Function onDeleteItem; // Hàm callback khi xóa nhiệm vụ

  const ToDoItem({
    Key? key,
    required this.todo,
    required this.onToDoChanged,
    required this.onDeleteItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onToDoChanged(todo); // Gọi callback khi mục nhiệm vụ được nhấp
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank, // Biểu tượng checkbox
          color: tdBlue,
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration: todo.isDone ? TextDecoration.lineThrough : null, // Gạch ngang nếu đã hoàn thành
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed, // Màu nền nút xóa
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {
              onDeleteItem(todo.id); // Gọi callback khi nút xóa được nhấp
            },
          ),
        ),
      ),
    );
  }
}
