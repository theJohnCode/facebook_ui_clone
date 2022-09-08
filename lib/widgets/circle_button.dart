import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final VoidCallback onPressed;
  final bool showBadge;

  const CircleButton({
    super.key,
    required this.icon,
    required this.iconSize,
    required this.onPressed,
    this.showBadge = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(icon),
            iconSize: iconSize,
            color: Colors.black,
          ),
        ),
        showBadge
            ? Positioned(
                right: -1,
                top: 0,
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(2),
                  height: 22,
                  width: 22,
                  decoration: BoxDecoration(
                    color: Colors.red[500],
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    '10',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
