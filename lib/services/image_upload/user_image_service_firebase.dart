import 'dart:io';

import 'package:finger_tips/services/image_upload/user_image_service.dart';
import 'package:firebase_storage/firebase_storage.dart';

class UserImageUploadServiceFirebase implements UserImageUploadService {
  @override
  Future<void> uploadUserImage(File img) async {
    return await FirebaseStorage.instance
        .ref()
        .child('dfg' + '.jpg')
        .putFile(img);
  }

  Future<String> getDownloadUrl() {
    final url =
        FirebaseStorage.instance.ref().child('dfg' + '.jpg').getDownloadURL();
    return url;
  }
}
