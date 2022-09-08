import 'package:facebook_ui_clone/models/models.dart';
import 'package:facebook_ui_clone/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

class UserCArd extends StatelessWidget {
  final User user;
  final bool displayname;

  const UserCArd({
    super.key,
    required this.user,
    this.displayname = true,
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
          Flexible(
            child: Text(
              displayname ? user.name : '',
              style: const TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
