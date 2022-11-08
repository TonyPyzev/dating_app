import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  static const String routeName = '/user';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const UserScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
