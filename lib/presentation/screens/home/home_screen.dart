import 'package:flutter/material.dart';

import '../../../data/models/models.dart';
import '../../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    var apdp = 0;
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          UserCard(user: User.users[0]),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 60,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ChoiceButton(
                  btnSize: 60,
                  iconSize: 25,
                  color: Theme.of(context).colorScheme.secondary,
                  icon: Icons.clear_rounded,
                ),
                const ChoiceButton(
                  btnSize: 80,
                  iconSize: 30,
                  color: Colors.white,
                  icon: Icons.favorite,
                  hasGradient: true,
                ),
                ChoiceButton(
                  btnSize: 60,
                  iconSize: 25,
                  color: Theme.of(context).colorScheme.primary,
                  icon: Icons.watch_later,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChoiceButton extends StatelessWidget {
  const ChoiceButton({
    super.key,
    required this.btnSize,
    required this.iconSize,
    required this.color,
    required this.icon,
    this.hasGradient = false,
  });

  final double btnSize;
  final double iconSize;
  final Color color;
  final IconData icon;
  final bool hasGradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: btnSize,
      height: btnSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        gradient: hasGradient
            ? LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondary,
                ],
              )
            : null,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(50),
            spreadRadius: 4,
            blurRadius: 4,
            offset: const Offset(3, 3),
          ),
        ],
      ),
      child: Icon(
        icon,
        size: iconSize,
        color: color,
      ),
    );
  }
}
