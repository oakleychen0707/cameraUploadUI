import 'package:image_picker/image_picker.dart';

class ImagePickerHelper {
  static final ImagePicker _picker = ImagePicker();

  // 靜態方法來處理圖片選擇
  static Future<void> pickImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      // 在這裡處理圖片，例如上傳圖片
      print('選擇的圖片路徑: ${image.path}');
    }
  }
}
