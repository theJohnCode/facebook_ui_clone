import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_ui_clone/models/models.dart';
import 'package:facebook_ui_clone/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

class PostContainer extends StatelessWidget {
  final Post post;
  const PostContainer({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(vertical: 8),
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _PostHeader(post: post),
                const SizedBox(height: 4),
                Text(post.caption),
                post.imageUrl.isNotEmpty
                    ? const SizedBox.shrink()
                    : const SizedBox(height: 6),
              ],
            ),
          ),
          post.imageUrl.isNotEmpty
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: CachedNetworkImage(imageUrl: post.imageUrl),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}

class _PostHeader extends StatelessWidget {
  final Post post;
  const _PostHeader({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileAvatar(imageUrl: post.user.imageUrl),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.user.name,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Text(
                    '${post.timeAgo} . ',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                    ),
                  ),
                  Icon(
                    Icons.public,
                    size: 12,
                    color: Colors.grey[600],
                  ),
                ],
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () => print('More'),
          icon: const Icon(
            Icons.more_horiz,
          ),
        )
      ],
    );
  }
}
