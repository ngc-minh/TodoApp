class ToDo {
  String? id; // ID duy nhất cho mỗi mục todo
  String? todoText; // Nội dung nhiệm vụ
  bool isDone; // Trạng thái hoàn thành của nhiệm vụ

  // Constructor cho lớp ToDo với các tham số id và todoText bắt buộc
  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false, // Giá trị mặc định của isDone là false
  });

  // Tạo đối tượng ToDo từ JSON
  factory ToDo.fromJson(Map<String, dynamic> json) {
    return ToDo(
      id: json['id'],
      todoText: json['todoText'],
      isDone: json['isDone'],
    );
  }

  // Chuyển đổi đối tượng ToDo thành JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'todoText': todoText,
      'isDone': isDone,
    };
  }
}
