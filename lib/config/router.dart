// import 'package:tsla/ui/screens/settings/languages_screen.dart';
import 'package:flutter/material.dart';
import 'package:tsla/ui/screens/add_screen.dart';
import 'package:tsla/ui/screens/bottom_bar.dart';
import 'package:tsla/ui/screens/home_screen.dart';

// import '../ui/app_start_screen.dart';
// import '../ui/main_screen.dart';
// import '../ui/screens/auth/log_in_screen.dart';
// import '../ui/screens/auth/password_screen.dart';
// import '../ui/screens/auth/register/sign_up_screen.dart';
// import '../ui/screens/subscription/subscription_screen.dart';
// import '../ui/screens/webview_screen.dart';
// import '../ui/screens/user/edit_user_profile_screen.dart';
// import '../ui/screens/welcome_screen.dart';

const String initialRoute = BottomTabBarr.routeName;

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case BottomTabBarr.routeName:
        return MaterialPageRoute(builder: (_) => BottomTabBarr());
      case AddScreen.routeName:
        return MaterialPageRoute(builder: (_) => AddScreen());
      // case WelcomeScreen.routeName:
      //   return MaterialPageRoute(builder: (_) => WelcomeScreen());
      // case MainScreen.routeName:
      //   return MaterialPageRoute(builder: (_) => MainScreen());
      // case LogInScreen.routeName:
      //   return MaterialPageRoute(builder: (_) => LogInScreen());
      // case SignUpScreen.routeName:
      //   return MaterialPageRoute(builder: (_) => SignUpScreen());
      // case PasswordScreen.routeName:
      //   return MaterialPageRoute(builder: (_) => PasswordScreen());
      // case EditUserProfileScreen.routeName:
      //   return MaterialPageRoute(builder: (_) => EditUserProfileScreen());
      // case SubscriptionScreen.routeName:
      //   return MaterialPageRoute(builder: (_) => SubscriptionScreen());
      // case LanguagesScreen.routeName:
      //   return MaterialPageRoute(builder: (_) => LanguagesScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
