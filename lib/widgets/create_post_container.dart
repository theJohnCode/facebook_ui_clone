import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_ui_clone/models/models.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;
  const CreatePostContainer({
    super.key,
    required this.currentUser,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey[200],
                backgroundImage: CachedNetworkImageProvider(
                  currentUser.imageUrl,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'What\'s on your mind?'),
                ),
              ),
            ],
          ),
          const Divider(
            height: 10,
            thickness: 0.5,
          ),
          SizedBox(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  icon: const Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ),
                  label: const Text(
                    'Live',
                    style: TextStyle(),
                  ),
                  onPressed: () => print('live'),
                ),
                const VerticalDivider(
                  width: 8,
                  thickness: 0.5,
                ),
                TextButton.icon(
                  icon: const Icon(
                    Icons.photo,
                    color: Colors.green,
                  ),
                  label: const Text(
                    'Photo',
                    style: TextStyle(),
                  ),
                  onPressed: () => print('live'),
                ),
                const VerticalDivider(
                  width: 8,
                ),
                TextButton.icon(
                  icon: const Icon(
                    Icons.video_call,
                    color: Colors.purpleAccent,
                  ),
                  label: const Text(
                    'Room',
                    style: TextStyle(),
                  ),
                  onPressed: () => print('live'),
                ),
                const VerticalDivider(
                  width: 8,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
