import 'package:facebook_ui_clone/models/models.dart';
import 'package:facebook_ui_clone/widgets/circle_button.dart';
import 'package:facebook_ui_clone/widgets/custom_tab_bar.dart';
import 'package:facebook_ui_clone/widgets/user_card.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../config/palette.dart';

class CustomAppBar extends StatelessWidget {
  final User currentUser;
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;

  const CustomAppBar({
    super.key,
    required this.currentUser,
    required this.icons,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 4,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Expanded(
            child: Text(
              'facebook',
              style: TextStyle(
                color: Palette.facebookBlue,
                fontSize: 32,
                letterSpacing: -1.2,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: double.infinity,
            width: 600,
            child: CustomTabBar(
              icons: icons,
              selectedIndex: selectedIndex,
              onTap: onTap,
              isBottomIndicator: true,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                UserCArd(user: currentUser),
                const SizedBox(
                  width: 12,
                ),
                CircleButton(
                    icon: Icons.search,
                    iconSize: 30,
                    onPressed: () => print('search')),
                CircleButton(
                    icon: MdiIcons.facebookMessenger,
                    iconSize: 30,
                    onPressed: () => print('Messenger')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
