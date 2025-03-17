import 'package:flutter/material.dart';
import 'MenuHelper.dart';

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
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: '搜尋',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                prefixIcon: const Icon(Icons.search),
              ),
              onChanged: (query) {
                print('搜尋內容: $query');
              },
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