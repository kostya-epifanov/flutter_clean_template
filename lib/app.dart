import 'package:flutter/material.dart';
import 'package:flutter_clean_template/core/di/locator.dart';
import 'package:flutter_clean_template/features/random_int_viewer/presentation/ui/random_int_viewer_screen.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: setupLocator(_navigatorKey),
      builder: (BuildContext context, snapshot) {
        return AppInternal(
          navigatorKey: _navigatorKey,
        );
      },
    );
  }
}

class AppInternal extends StatefulWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  const AppInternal({Key? key, required this.navigatorKey}) : super(key: key);

  @override
  AppInternalState createState() => AppInternalState();
}

class AppInternalState extends State<AppInternal> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    //ignore.
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      navigatorKey: widget.navigatorKey,
      navigatorObservers: [routeObserver],
      onGenerateRoute: (_) => RandomIntViewerScreen.route(),
      builder: (context, child) {
        if (!isLocatorInitialized) {
          return Container();
        }
        return child ?? Container();
      },
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}
