import 'package:facebook_ui_clone/models/models.dart';
import 'package:facebook_ui_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../data/data.dart';

class WidgetScreen extends StatefulWidget {
  final EdgeInsets? padding;
  final List<Story> stories;
  final User currentUser;
  const WidgetScreen({
    super.key,
    required this.stories,
    required this.currentUser,
    this.padding,
  });

  @override
  State<WidgetScreen> createState() => _WisgetScreenState();
}

class _WisgetScreenState extends State<WidgetScreen> {
  final List<Widget> _widgets = [
    Stories(currentUser: currentUser, stories: stories),
    // const Scaffold(),
    // const Scaffold(),
  ];

  final List<String> _text = ['Stories', 'Reels', 'Room'];

  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _text.length,
      child: Column(
        children: [
          CustomStoryBar(
            isBottomIndicator: true,
            text: _text,
            selectedIndex: selectedTabIndex,
            onTap: (index) => setState(
              () => selectedTabIndex = index,
            ),
          ),
        ],
      ),
    );
  }
}
