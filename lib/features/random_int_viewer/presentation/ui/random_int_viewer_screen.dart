import 'package:flutter/material.dart';
import 'package:flutter_clean_template/core/navigation/screen_transitions.dart';

class RandomIntViewerScreen extends StatelessWidget {
  static const name = '/random_int_viewer_screen';

  const RandomIntViewerScreen({super.key});

  static Route route() {
    return ScreenTransitions.getTransition(
        ScreenTransitionType.fadeIn,
        const RouteSettings(name: name),
        const RandomIntViewerScreen()
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF333333),
      body: Center(
        child: Text(
          'RandomIntViewerScreen',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
