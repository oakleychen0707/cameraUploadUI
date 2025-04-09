import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  final TextEditingController controller;

  SearchWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: '搜尋',
                labelStyle: const TextStyle(color: Colors.grey), // 標籤顏色
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Colors.blue.shade900),
                ),
                floatingLabelStyle: TextStyle(color: Colors.blue.shade900),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Colors.blue.shade900),
                ),
                prefixIcon: const Icon(Icons.search),
              ),
              cursorColor: Colors.blue.shade900,
              onSubmitted: (query) {
                debugPrint('搜尋內容: $query');
              },
            ),
          ),
        ),
        Divider(
          thickness: 1, // 線的粗細
          color: Colors.grey.shade400,
          height: 0,
        ),
      ],
    );
  }
}