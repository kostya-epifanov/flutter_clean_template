import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum ScreenTransitionType {
  inFromLeft,
  inFromRight,
  inFromBottom,
  inFromTop,
  fromBottomToTop,
  fadeIn,
  native,
  nativeModal,
  material,
  materialFullScreenDialog,
  cupertino,
  cupertinoFullScreenDialog,
  transparent,
  transparentFullScreenDialog,
  enterExitRoute,
}

class ScreenTransitions {
  static RouteTransitionsBuilder _standardTransitionsBuilder(ScreenTransitionType transitionType) {
    return (context, animation, secondaryAnimation, child) {
      if (transitionType == ScreenTransitionType.fadeIn) {
        return FadeTransition(opacity: animation, child: child);
      } else {
        const Offset topLeft = Offset(0.0, 0.0);
        const Offset topRight = Offset(1.0, 0.0);
        const Offset bottomLeft = Offset(0.0, 1.0);
        const Offset bottomRight = Offset(1.0, 1.0);

        Offset startOffset = bottomLeft;
        Offset endOffset = topLeft;
        if (transitionType == ScreenTransitionType.inFromLeft) {
          startOffset = const Offset(-1.0, 0.0);
          endOffset = topLeft;
        } else if (transitionType == ScreenTransitionType.inFromRight) {
          startOffset = topRight;
          endOffset = topLeft;
        } else if (transitionType == ScreenTransitionType.inFromBottom) {
          startOffset = bottomRight;
          endOffset = topLeft;
        } else if (transitionType == ScreenTransitionType.inFromTop) {
          startOffset = const Offset(0.0, -1.0);
          endOffset = topLeft;
        } else if (transitionType == ScreenTransitionType.fromBottomToTop) {
          startOffset = const Offset(0.0, 1.0);
          endOffset = const Offset(0.0, 0.0);
        }

        return SlideTransition(
          position: Tween<Offset>(
            begin: startOffset,
            end: endOffset,
          ).animate(animation),
          child: child,
        );
      }
    };
  }

  static PageRoute<T> getTransition<T>(
    ScreenTransitionType transition,
    RouteSettings? routeSettings,
    Widget widget, [
    Duration? transitionDuration,
  ]) {
    transitionDuration ??= const Duration(milliseconds: 300);

    final bool isNativeTransition =
        transition == ScreenTransitionType.native || transition == ScreenTransitionType.nativeModal;

    if (isNativeTransition) {
      if (Platform.isIOS) {
        return CupertinoPageRoute<T>(
          settings: routeSettings,
          fullscreenDialog: transition == ScreenTransitionType.nativeModal,
          builder: (context) {
            return widget;
          },
        );
      } else {
        return MaterialPageRoute<T>(
          settings: routeSettings,
          fullscreenDialog: transition == ScreenTransitionType.nativeModal,
          builder: (context) {
            return widget;
          },
        );
      }
    } else if (transition == ScreenTransitionType.material ||
        transition == ScreenTransitionType.materialFullScreenDialog) {
      return MaterialPageRoute<T>(
        settings: routeSettings,
        fullscreenDialog: transition == ScreenTransitionType.materialFullScreenDialog,
        builder: (context) {
          return widget;
        },
      );
    } else if (transition == ScreenTransitionType.cupertino ||
        transition == ScreenTransitionType.cupertinoFullScreenDialog) {
      return CupertinoPageRoute<T>(
        settings: routeSettings,
        fullscreenDialog: transition == ScreenTransitionType.cupertinoFullScreenDialog,
        builder: (context) => widget,
      );
    } else if (transition == ScreenTransitionType.transparent ||
        transition == ScreenTransitionType.transparentFullScreenDialog) {
      return NativeTransparentRoute<T>(
        settings: routeSettings,
        fullscreenDialog: transition == ScreenTransitionType.transparentFullScreenDialog,
        builder: (context) => widget,
      );
    } else {
      final routeTransitionsBuilder = _standardTransitionsBuilder(transition);
      return PageRouteBuilder<T>(
        settings: routeSettings,
        pageBuilder: (context, animation, secondaryAnimation) => widget,
        transitionDuration: transitionDuration,
        transitionsBuilder: routeTransitionsBuilder,
      );
    }
  }
}

class NativeTransparentRoute<T> extends PageRoute<T> {
  /// Construct a MaterialPageRoute whose contents are defined by [builder].
  ///
  /// The values of [builder], [maintainState], and [fullScreenDialog] must not
  /// be null.
  NativeTransparentRoute({
    required this.builder,
    RouteSettings? settings,
    this.maintainState = true,
    bool fullscreenDialog = false,
  }) : super(settings: settings, fullscreenDialog: fullscreenDialog);

  /// Builds the primary contents of the route.
  final WidgetBuilder builder;

  @override
  bool get opaque => false;

  @override
  final bool maintainState;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 300);

  @override
  Color? get barrierColor => null;

  @override
  String? get barrierLabel => null;

  @override
  bool canTransitionFrom(TransitionRoute<dynamic> previousRoute) {
    return previousRoute is MaterialPageRoute || previousRoute is CupertinoPageRoute;
  }

  @override
  bool canTransitionTo(TransitionRoute<dynamic> nextRoute) {
    // Don't perform outgoing animation if the next route is a fullscreen dialog.
    return (nextRoute is MaterialPageRoute && !nextRoute.fullscreenDialog) ||
        (nextRoute is CupertinoPageRoute && !nextRoute.fullscreenDialog);
  }

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    final Widget result = builder(context);
    return Semantics(
      scopesRoute: true,
      explicitChildNodes: true,
      child: result,
    );
  }

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    final PageTransitionsTheme theme = Theme.of(context).pageTransitionsTheme;
    return theme.buildTransitions<T>(this, context, animation, secondaryAnimation, child);
  }

  @override
  String get debugLabel => '${super.debugLabel}(${settings.name})';
}
