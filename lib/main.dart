import 'package:flutter/material.dart';
import 'package:kiosk_ui/controllers/mainscreen_provider.dart';
import 'package:kiosk_ui/ui/mainscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MainScreenNotifier()
        )
      ],
      child: const MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kiosk',
      theme: ThemeData (
        useMaterial3: true,
      ),
      home: MainScreen(),
    );
  }
}
