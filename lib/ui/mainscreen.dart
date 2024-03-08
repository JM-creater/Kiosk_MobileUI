import 'package:flutter/material.dart';
import 'package:kiosk_ui/controllers/mainscreen_provider.dart';
import 'package:kiosk_ui/shared/bottom_nav.dart';
import 'package:kiosk_ui/ui/cartpage.dart';
import 'package:kiosk_ui/ui/homepage.dart';
import 'package:kiosk_ui/ui/searchpage.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class MainScreen extends StatelessWidget {

  MainScreen({super.key});

  List<Widget> pageList = const [
    HomePage(),
    SearchPage(),
    HomePage(),
    CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) {
        return Scaffold(
          backgroundColor: const Color(0xFFE2E2E2),
          body: pageList[mainScreenNotifier.pageIndex],
          bottomNavigationBar: const BottomNavBar(),
        );
      }
    );
  }
}



