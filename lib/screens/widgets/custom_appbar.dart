import 'package:flutter/material.dart';
import '../../utilities/utilities.dart';

AppBar customWelcomeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: const Text(
      'Welcome Abdul Haseeb',
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    actions: <Widget>[
      IconButton(
        onPressed: () {},
        tooltip: 'settings',
        splashRadius: Utilities.iconBorderRadius,
        icon: Icon(
          Icons.settings,
          color: Theme.of(context).iconTheme.color,
        ),
      ),
      IconButton(
        onPressed: () {},
        tooltip: 'Log out',
        splashRadius: Utilities.iconBorderRadius,
        icon: Icon(
          Icons.logout,
          color: Theme.of(context).iconTheme.color,
        ),
      ),
      const SizedBox(width: 10),
    ],
  );
}

AppBar customAppBar({required BuildContext context, required String title}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    iconTheme: Theme.of(context).iconTheme,
    centerTitle: true,
    title: Text(
      title,
      style: const TextStyle(
        color: Colors.black,
      ),
    ),
    actions: <Widget>[
      IconButton(
        onPressed: () {},
        tooltip: 'settings',
        splashRadius: Utilities.iconBorderRadius,
        icon: Icon(
          Icons.settings,
          color: Theme.of(context).iconTheme.color,
        ),
      ),
      IconButton(
        onPressed: () {},
        tooltip: 'Log out',
        splashRadius: Utilities.iconBorderRadius,
        icon: Icon(
          Icons.logout,
          color: Theme.of(context).iconTheme.color,
        ),
      ),
      const SizedBox(width: 10),
    ],
  );
}
