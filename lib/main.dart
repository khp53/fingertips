import 'package:finger_tips/screens/auth/login/loginscreen_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'app/dependencies.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  di.init();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          textTheme: TextTheme(
            bodyText1: TextStyle(color: Colors.black, fontSize: 20),
            subtitle1: TextStyle(color: Colors.black, fontSize: 15),
          ),
          appBarTheme: AppBarTheme(
              elevation: 0,
              textTheme: TextTheme(headline1: TextStyle(color: Colors.black)))),
      title: "FingerTips",
      home: LoginScreenView(),
    );
  }
}
