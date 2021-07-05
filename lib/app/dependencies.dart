import 'package:finger_tips/screens/users/homepage/userHomepage_viewmodel.dart';
import 'package:finger_tips/screens/users/user_viewmodel.dart';
import 'package:finger_tips/screens/users/view_posts/posts_viewmodel.dart';
import 'package:finger_tips/services/auth/auth_service_rest.dart';
import 'package:finger_tips/services/auth/auth_services.dart';
import 'package:finger_tips/services/homepage/homepage_service_rest.dart';
import 'package:finger_tips/services/homepage/homepage_services.dart';
import 'package:finger_tips/services/image_upload/user_image_service.dart';
import 'package:finger_tips/services/image_upload/user_image_service_firebase.dart';
import 'package:finger_tips/services/posts/posts_service.dart';
import 'package:finger_tips/services/posts/posts_service_rest.dart';
import 'package:finger_tips/services/rest_services.dart';
import 'package:get_it/get_it.dart';

GetIt dependency = GetIt.instance;

void init() {
  // Services
  dependency.registerLazySingleton<RestService>(
    () => RestService(
        baseUrl: 'https://us-central1-fingertips-beb3b.cloudfunctions.net/api'),
    //'http://06d1c84323d1.ngrok.io/fingertips-beb3b/us-central1/api'),
  );

  dependency
      .registerLazySingleton<HomepageService>(() => HomepageServiceRest());
  dependency.registerLazySingleton<AuthService>(() => AuthServiceRest());
  dependency.registerLazySingleton<PostsService>(() => PostsServiceRest());
  dependency.registerLazySingleton<UserImageUploadService>(
      () => UserImageUploadServiceFirebase());

  // Viewmodels
  dependency.registerLazySingleton(() => UserViewModel());
  dependency.registerLazySingleton(() => UserHomepageViewModel());
  //dependency.registerLazySingleton(() => PostsViewModel());
}
