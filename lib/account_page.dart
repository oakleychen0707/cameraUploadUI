import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerLeft,  // 將標題設為靠左
          child: Text('帳戶'),  // 設定標題文字
        ),
      ),
      body: const Center(
        child: Text('帳戶內容'),
      ),
    );
  }
}