import 'package:flutter/material.dart';

import 'basic_widget/unity_ad.dart';
import 'grid_view_screen.dart';
import 'home_screen.dart';
import 'login_form_screen.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await AdManager.init();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: GridViewPages(),
    );
  }
}

