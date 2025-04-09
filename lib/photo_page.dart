import 'package:flutter/material.dart';
import 'MenuHelper.dart';
import 'widget/SearchWidget.dart';

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
        title: Text("相片", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: SearchWidget(
              controller: _searchController, // 只需傳遞 controller，邏輯寫在組件內部
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