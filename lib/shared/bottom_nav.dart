import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:kiosk_ui/controllers/mainscreen_provider.dart';
import 'package:kiosk_ui/shared/bottom_nav_widget.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(16))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BottomNavWidget(
                    onTap: () {
                      mainScreenNotifier.pageIndex = 0;
                    }, 
                    icon: mainScreenNotifier.pageIndex == 0
                    ? CommunityMaterialIcons.home 
                    : CommunityMaterialIcons.home_outline,
                  ),
                  BottomNavWidget(
                    onTap: () {
                      mainScreenNotifier.pageIndex = 1;
                    }, 
                    icon: mainScreenNotifier.pageIndex == 1
                    ? Ionicons.search
                    : Ionicons.search_outline,
                  ),
                  BottomNavWidget(
                    onTap: () {
                      mainScreenNotifier.pageIndex = 2;
                    }, 
                    icon: mainScreenNotifier.pageIndex == 2
                    ? Ionicons.add 
                    : Ionicons.add_circle_outline,
                  ),
                  BottomNavWidget(
                    onTap: () {
                      mainScreenNotifier.pageIndex = 3;
                    }, 
                    icon: mainScreenNotifier.pageIndex == 3
                    ? Ionicons.cart
                    : Ionicons.cart_outline,
                  ),
                  // BottomNavWidget(
                  //   onTap: () {}, 
                  //   icon: Ionicons.person,
                  // ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}