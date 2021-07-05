import 'dart:io';

abstract class UserImageUploadService {
  Future<void> uploadUserImage(File img);
  Future<String> getDownloadUrl();
}
