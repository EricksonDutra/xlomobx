import 'package:flutter/material.dart';

class PageTile extends StatelessWidget {
  const PageTile({
    super.key,
    required this.label,
    required this.iconData,
    required this.onTap,
    required this.highligted,
  });

  final String label;
  final IconData iconData;
  final VoidCallback onTap;
  final bool highligted;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: highligted ? Colors.purple : Colors.black54,
        ),
      ),
      leading: Icon(
        iconData,
        color: highligted ? Colors.purple : Colors.black54,
      ),
      onTap: onTap,
    );
  }
}
