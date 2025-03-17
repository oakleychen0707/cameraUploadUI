import 'package:flutter/material.dart';
import 'image_picker_helper.dart';

class FilePage extends StatefulWidget {
  const FilePage({super.key});

  @override
  _FilePageState createState() => _FilePageState();
}

class _FilePageState extends State<FilePage> {
  // 用來存儲搜尋框的文字
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerLeft,  // 將標題設為靠左
          child: Text('檔案'),  // 設定標題文字
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
              bottom: 8,
              left: 16,
              right: 16,
            ),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: '搜尋',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),  // 設定圓角
                ),
                prefixIcon: const Icon(Icons.search),
              ),
              onChanged: (query) {
                // 這裡可以處理搜尋邏輯，根據輸入更新界面
                print('搜尋內容: $query');
              },
            ),
          ),
          const Expanded(
            child: Center(
              child: Text('檔案內容'),
            ),
          ),
        ],
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