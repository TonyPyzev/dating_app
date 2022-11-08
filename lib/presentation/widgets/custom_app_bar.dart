import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppBar(
      title: Row(
        children: [
          Expanded(
            child: SvgPicture.asset(
              'assets/images/logo.svg',
              height: 50,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              'DISCOVER',
              style: theme.textTheme.headline2,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {
            //TODO navigate to matches
          },
          icon: Icon(
            Icons.message,
            color: theme.primaryColor,
          ),
        ),
        IconButton(
          onPressed: () {
            //TODO navigate to user profile
          },
          icon: Icon(
            Icons.person,
            color: theme.primaryColor,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
