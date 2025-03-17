import 'package:flutter/material.dart';
import 'image_picker_helper.dart';  // 引入 ImagePickerHelper

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('主頁內容'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ImagePickerHelper.pickImage(),  // 調用共用的 pickImage 方法
        child: const Icon(
          Icons.add,
          color: Colors.white,  // 圖標顏色
        ),
        backgroundColor: Colors.blue.shade900,  // 按鈕背景顏色
        shape: CircleBorder(),
      ),
    );
  }
}