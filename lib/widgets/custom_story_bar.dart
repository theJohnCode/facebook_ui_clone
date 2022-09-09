import 'package:facebook_ui_clone/config/palette.dart';
import 'package:flutter/material.dart';

class CustomStoryBar extends StatelessWidget {
  final List<String> text;
  final int selectedIndex;
  final Function(int) onTap;
  final bool isBottomIndicator;

  const CustomStoryBar({
    super.key,
    required this.text,
    required this.selectedIndex,
    required this.onTap,
    this.isBottomIndicator = false,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
        border: isBottomIndicator
            ? const Border(
                bottom: BorderSide(
                  color: Palette.facebookBlue,
                  width: 3,
                ),
              )
            : const Border(
                top: BorderSide(
                  color: Palette.facebookBlue,
                  width: 3,
                ),
              ),
      ),
      onTap: onTap,
      tabs: text
          .asMap()
          .map(
            (i, e) => MapEntry(
              i,
              Tab(
                icon: Text(
                  e,
                  style: TextStyle(
                      color: i == selectedIndex
                          ? Palette.facebookBlue
                          : Colors.black45,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          )
          .values
          .toList(),
    );
  }
}
