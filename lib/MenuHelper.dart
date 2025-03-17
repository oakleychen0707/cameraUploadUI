import 'package:flutter/material.dart';
import 'imagePickerHelper.dart';
import 'package:image_picker/image_picker.dart';

class MenuHelper {
  static void showMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildMenuItem(context, Icons.create_new_folder, '新增資料夾', () {}),
                _buildMenuItem(context, Icons.insert_drive_file, '其他檔案', () => ImagePickerHelper.pickImage()),
                _buildMenuItem(context, Icons.camera_alt, '拍照', () => _pickImage(ImageSource.camera)),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildMenuItem(context, Icons.videocam, '錄影', () => _pickVideo(ImageSource.camera)),
                _buildMenuItem(context, Icons.mic, '錄音', () {}),
                _buildMenuItem(context, Icons.note_alt, '記事', () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildMenuItem(BuildContext context, IconData icon, String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
        onTap();
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: Colors.blue.shade900,
            child: Icon(icon, color: Colors.white, size: 28),
          ),
          const SizedBox(height: 8),
          Text(label, style: const TextStyle(fontSize: 14)),
        ],
      ),
    );
  }

  static Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    await picker.pickImage(source: source);
  }

  static Future<void> _pickVideo(ImageSource source) async {
    final picker = ImagePicker();
    await picker.pickVideo(source: source);
  }
}