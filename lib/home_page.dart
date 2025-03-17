import 'package:flutter/material.dart';
import 'MenuHelper.dart';
import 'widget/SearchWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text('首頁'),
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
              child: Text('首頁內容'),
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