import 'package:flutter/material.dart';
import 'package:foodprint/presentation/core/animations/transitions.dart';
import 'package:foodprint/presentation/core/styles/colors.dart';
import 'package:foodprint/presentation/home/drawer/drawer.dart';
import 'package:foodprint/presentation/home/drawer/profile/pages/spending_breakdown_page.dart';
import 'package:foodprint/presentation/home/edit_profile/edit_profile.dart';
import 'package:foodprint/presentation/home/home_screen.dart';
import 'package:foodprint/presentation/legal/legal.dart';
import 'package:foodprint/presentation/login_page/login_page.dart';
import 'package:foodprint/presentation/map/restaurant_gallery/restaurant_gallery.dart';
import 'package:foodprint/presentation/router/home_screen_args.dart';
import 'package:foodprint/presentation/router/profile_page_args.dart';
import 'package:foodprint/presentation/router/restaurant_gallery_args.dart';
import 'package:foodprint/presentation/router/edit_profile_args.dart';
import 'package:foodprint/presentation/router/spending_breakdown_page_args.dart';
import 'package:foodprint/presentation/router/update_account_args.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case ProfilePage.routeName:
        if (args is ProfilePageArgs) {
          return MaterialPageRoute(
            builder: (_) => ProfilePage(
              token: args.token,
              foodprint: args.foodprint,
            ),
          );
        }
        return _errorRoute();
      case TermsOfService.routeName:
        return SlideUpEnterRoute(newPage: const TermsOfService());
      case PrivacyPolicy.routeName:
        return SlideUpEnterRoute(newPage: const PrivacyPolicy());
      case SpendingBreakdownPage.routeName:
        if (args is SpendingBreakdownPageArgs) {
          return FadeRoute(
              newPage: SpendingBreakdownPage(
            spending: args.spending,
          ));
        }
        return _errorRoute();
      case RestaurantGallery.routeName:
        if (args is RestaurantGalleryArgs) {
          return SlideUpEnterRoute(
              newPage: RestaurantGallery(
            restaurant: args.restaurant,
            photos: args.photos,
          ));
        }
        return _errorRoute();
      case LoginPage.routeOnRegisterSuccess:
        return SlideLeftRoute(newPage: const LoginPage());
      case LoginPage.routeOnLogout:
        return FadeRoute(newPage: const LoginPage());
      case HomeScreen.routeOnLogin:
        if (args is HomeScreenArgs) {
          return FadeRoute(
              newPage: HomeScreen(
            token: args.token,
          ));
        }
        return _errorRoute();
      case EditProfilePage.routeName:
        if (args is EditProfileArgs) {
          return FadeRoute(newPage: EditProfilePage(token: args.token));
        }
        return _errorRoute();
      case ChangeUsernamePage.routeName:
        if (args is ChangeUsernameArgs) {
          return FadeRoute(
              newPage: ChangeUsernamePage(
            token: args.token,
          ));
        }
        return _errorRoute();
      case ChangePasswordPage.routeName:
        if (args is ChangePasswordArgs) {
          return FadeRoute(
              newPage: ChangePasswordPage(
            token: args.token,
          ));
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  /// Generic error route
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        body: Center(
          child: Text(
            'ERROR',
            style: TextStyle(color: errorColor, fontSize: 40),
          ),
        ),
      );
    });
  }
}
