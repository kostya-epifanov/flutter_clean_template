import 'package:flutter/material.dart';
import 'package:flutter_clean_template/core/navigation/screen_transitions.dart';
import 'package:flutter_clean_template/core/ui/injectable_state.dart';
import 'package:flutter_clean_template/features/random_int_viewer/presentation/logic/random_int_viewer_cubit.dart';
import 'package:flutter_clean_template/features/random_int_viewer/presentation/logic/random_int_viewer_state.dart';

class RandomIntViewerScreen extends StatefulWidget {
  static const name = '/random_int_viewer_screen';

  const RandomIntViewerScreen({super.key});

  static Route route() {
    return ScreenTransitions.getTransition(ScreenTransitionType.fadeIn,
        const RouteSettings(name: name), const RandomIntViewerScreen());
  }

  @override
  State<RandomIntViewerScreen> createState() => _RandomIntViewerScreenState();
}

class _RandomIntViewerScreenState
    extends InjectableState<RandomIntViewerScreen, RandomIntViewerCubit, RandomIntViewerState> {
  @override
  Widget builder(
    BuildContext context,
    RandomIntViewerState state,
  ) {
    return Scaffold(
      backgroundColor: const Color(0xFF333333),
      body: Center(
        child: Text(
          '${state.connectivityState}',
          style: const TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
