import 'package:flutter/material.dart';
import '../../utilities/utilities.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    required this.onTap,
    required this.icon,
    required this.title,
    required this.color,
    this.iconSize = 24,
    this.padding = 16,
    Key? key,
  }) : super(key: key);

  final VoidCallback onTap;
  final IconData icon;
  final String title;
  final Color color;
  final double iconSize;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(Utilities.borderRadious),
          splashColor: color.withOpacity(0.3),
          hoverColor: color.withOpacity(0.2),
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 30,
            ),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: color),
              borderRadius: BorderRadius.circular(Utilities.borderRadious),
            ),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 6),
                Icon(icon, color: color, size: iconSize),
                const SizedBox(height: 6),
                Text(title),
                const SizedBox(height: 6),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
