import 'package:flutter/material.dart';
import 'home_page.dart';
import 'file_page.dart';
import 'photo_page.dart';
import 'account_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Album App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade900),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    FilePage(),
    PhotoPage(),
    AccountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.2), // 陰影顏色
              spreadRadius: 0, // 陰影擴散範圍
              blurRadius: 8, // 陰影模糊程度
              offset: Offset(0, -1), // 陰影偏移量
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
          backgroundColor: Colors.grey.shade100,
          selectedItemColor: Colors.blue.shade900,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: '首頁'),
            BottomNavigationBarItem(icon: Icon(Icons.folder), label: '檔案'),
            BottomNavigationBarItem(icon: Icon(Icons.photo), label: '相片'),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: '帳戶'),
          ],
        ),
      ),
    );
  }
}