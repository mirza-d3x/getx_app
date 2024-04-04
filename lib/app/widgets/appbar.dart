import 'package:flutter/material.dart';

class InternalAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const InternalAppBar({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
      centerTitle: true,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.blue.withOpacity(0.5),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
