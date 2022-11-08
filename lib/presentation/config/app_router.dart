import 'package:dating_app/presentation/screens/home/home_screen.dart';
import 'package:dating_app/presentation/screens/matches/matches_screen.dart';
import 'package:dating_app/presentation/screens/notFound/not_found_screen.dart';
import 'package:flutter/material.dart';

import '../screens/chat/chat_screen.dart';
import '../screens/user/user_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return HomeScreen.route();
      case MatchesScreen.routeName:
        return MatchesScreen.route();
      case UserScreen.routeName:
        return UserScreen.route();
      case ChatScreen.routeName:
        return ChatScreen.route();
      default:
        return NotFoundScreen.route();
    }
  }
}
