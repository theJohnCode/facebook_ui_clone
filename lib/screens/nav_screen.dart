import 'package:facebook_ui_clone/screens/home_screen.dart';
import 'package:facebook_ui_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../data/data.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    const HomeScreen(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
  ];

  final List<IconData> _icons = [
    Icons.home,
    MdiIcons.storefront,
    MdiIcons.accountGroupOutline,
    MdiIcons.facebookGaming,
  ];

  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        appBar: Responsive.isDesktop(context)
            ? PreferredSize(
                preferredSize: Size(
                  screenSize.width,
                  100,
                ),
                child: CustomAppBar(
                  currentUser: currentUser,
                  icons: _icons,
                  selectedIndex: selectedTabIndex,
                  onTap: (index) => setState(
                    () => selectedTabIndex = index,
                  ),
                ),
              )
            : null,
        body: IndexedStack(
          index: selectedTabIndex,
          children: _screens,
        ),
        bottomNavigationBar: !Responsive.isDesktop(context)
            ? Container(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: CustomTabBar(
                  icons: _icons,
                  selectedIndex: selectedTabIndex,
                  onTap: (index) => setState(
                    () => selectedTabIndex = index,
                  ),
                ),
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}
