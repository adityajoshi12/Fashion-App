import '../../core/base/base_service.dart';
import 'package:flutter/material.dart';

class NavigatorService extends BaseService {
  final GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState.pushNamed(routeName, arguments: arguments);
  }

  bool goBack() {
    return navigatorKey.currentState.pop();
  }
}
