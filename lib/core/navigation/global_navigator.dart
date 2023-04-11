import 'package:flutter/material.dart';

class GlobalNavigator {
  final GlobalKey<NavigatorState> _navigatorKey;

  NavigatorState? get navigator => _navigatorKey.currentState;

  GlobalNavigator({
    required GlobalKey<NavigatorState> navigatorKey,
  }) : _navigatorKey = navigatorKey;

  Future popAndPushNamed(
    String routeName, {
    dynamic result,
    Object? arguments,
  }) {
    return _navigatorKey.currentState!.popAndPushNamed(
      routeName,
      result: result,
      arguments: arguments,
    );
  }

  Future pushAndRemoveUntil(
    Route newRoute,
    RoutePredicate predicate,
  ) {
    return _navigatorKey.currentState!.pushAndRemoveUntil(
      newRoute,
      predicate,
    );
  }

  Future pushNamedAndRemoveUntil(
    String newRouteName,
    RoutePredicate predicate, {
    Object? arguments,
  }) {
    return _navigatorKey.currentState!.pushNamedAndRemoveUntil(
      newRouteName,
      (route) => false,
      arguments: arguments,
    );
  }

  Future pushNamed(
    String routeName, {
    Object? arguments,
  }) {
    return _navigatorKey.currentState!.pushNamed(
      routeName,
      arguments: arguments,
    );
  }

  Future<bool> maybePop([dynamic result]) {
    return _navigatorKey.currentState!.maybePop(result);
  }

  void pop<T extends Object>([T? result]) {
    return _navigatorKey.currentState!.pop(result);
  }

  Future push(Route route) {
    return _navigatorKey.currentState!.push(route);
  }

  Future pushReplacement(
    Route newRoute, {
    dynamic result,
  }) {
    return _navigatorKey.currentState!.pushReplacement(
      newRoute,
      result: result,
    );
  }
}
