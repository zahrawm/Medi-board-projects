import 'package:flutter/material.dart';
import 'package:medi_ui/screen/home_screen.dart';
import 'package:medi_ui/screen/report_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
       initialRoute: '/home',
    routes: {
      '/home': (context) => HomeScreen(),
     
      '/reports': (context) => ReportScreen(),
      //'/profile': (context) => ProfileScreen(),
    },
    );
  }
}
