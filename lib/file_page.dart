import 'package:flutter/material.dart';
import 'MenuHelper.dart';
import 'widget/SearchWidget.dart';

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
            child: SearchWidget(
              controller: _searchController, // 只需傳遞 controller，邏輯寫在組件內部
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
        onPressed: () => MenuHelper.showMenu(context),
        child: const Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.blue.shade900,
        shape: const CircleBorder(),
      ),
    );
  }
}