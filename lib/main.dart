import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './screens/home.dart'; // Import màn hình chính

void main() {
  runApp(const MyApp()); // Khởi động ứng dụng
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Đặt kiểu hiển thị giao diện hệ thống
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      // debugShowCheckedModeBanner: false, // Tắt banner debug
      title: 'ToDo App', // Tiêu đề ứng dụng
      home: Home(), // Đặt Home là màn hình ban đầu
    );
  }
}
 