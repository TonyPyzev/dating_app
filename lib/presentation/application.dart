import 'package:dating_app/presentation/config/theme.dart';
import 'package:flutter/material.dart';

import 'config/app_router.dart';
import 'screens/home/home_screen.dart';

class Application extends StatelessWidget {
  const Application({
    super.key,
  });

  final String _title = 'Dating App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: theme(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routeName,
    );
  }
}
