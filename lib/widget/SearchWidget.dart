import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  final TextEditingController controller;

  SearchWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: '搜尋',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        prefixIcon: const Icon(Icons.search),
      ),
      onSubmitted: (query) {
        // 直接在這裡寫搜尋邏輯
        print('搜尋內容: $query');
      },
    );
  }
}