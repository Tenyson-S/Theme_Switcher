import 'package:flutter/material.dart';
import '../data/value_notifier.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  
  @override
  Widget build(BuildContext context) {
    return  ValueListenableBuilder(valueListenable: isDarkMode, 
    builder: (context, mode, child) {
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: mode ? Brightness.light : Brightness.dark,
        ),
      ),

      home: Scaffold(
        appBar: AppBar(
          title: Text("Theme Switcher", style: TextStyle(
            color: mode ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),),
          backgroundColor: Colors.teal,
          actions: [
            IconButton(
              onPressed: (){
                isDarkMode.value = !isDarkMode.value;
              },
              icon: Icon(mode ? Icons.dark_mode : Icons.light_mode)
            )
          ],
        ),
      ),
    );
    }
    );
  }
}