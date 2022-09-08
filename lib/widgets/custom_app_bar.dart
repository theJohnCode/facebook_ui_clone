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
          Expanded(
            child: Row(
              children: <Widget>[
                const Icon(
                  MdiIcons.facebook,
                  color: Palette.facebookBlue,
                  size: 38,
                ),
                const SizedBox(
                  width: 8,
                ),
                SizedBox(
                  width: 200,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Palette.scaffold,
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 5),
                      hintText: 'Search Facebook',
                      prefixIcon: const Icon(Icons.search),
                      hintStyle: const TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w300,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                )
              ],
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
                CircleButton(
                    icon: Icons.apps,
                    iconSize: 25,
                    onPressed: () => print('Apps')),
                CircleButton(
                    icon: MdiIcons.facebookMessenger,
                    iconSize: 25,
                    onPressed: () => print('Messenger')),
                CircleButton(
                  icon: MdiIcons.bell,
                  iconSize: 25,
                  onPressed: () => print('Notification'),
                  showBadge: true,
                ),
                UserCArd(
                  user: currentUser,
                  displayname: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
