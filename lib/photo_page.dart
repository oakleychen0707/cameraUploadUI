import 'package:flutter/material.dart';
import 'MenuHelper.dart';

class PhotoPage extends StatefulWidget {
  const PhotoPage({super.key});

  @override
  _PhotoPageState createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  // 用來存儲搜尋框的文字
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerLeft,  // 將標題設為靠左
          child: Text('相片'),  // 設定標題文字
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
              child: Text('相片內容'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => MenuHelper.showMenu(context),
        child: const Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.blue.shade900,
        shape: const CircleBorder(),
      ),
    );
  }
}