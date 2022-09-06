import 'package:facebook_ui_clone/models/models.dart';
import 'package:facebook_ui_clone/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

class UserCArd extends StatelessWidget {
  final User user;

  const UserCArd({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ProfileAvatar(imageUrl: user.imageUrl),
          const SizedBox(
            width: 6,
          ),
          Text(
            user.name,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
