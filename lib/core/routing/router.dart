import 'package:flutter/material.dart';
import 'package:mvvm_flutter/core/models/product.model.dart';
import 'package:mvvm_flutter/views/cart/cart_view.dart';
import 'package:mvvm_flutter/views/details/details_view.dart';
import 'package:mvvm_flutter/views/home/home_view.dart';
import 'package:mvvm_flutter/views/login/login_view.dart';

import 'route_name.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
 
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView(), settings);
    case CartRoute:
      return _getPageRoute(CartView(), settings);
          case LoginRoute:
      return _getPageRoute(LoginView(), settings);
    case DetailsRoute:
      var p = settings.arguments as Product;
      return _getPageRoute(DetailsView(p), settings);
    default:
      return _getPageRoute(HomeView(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({this.child, this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
