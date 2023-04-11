import 'package:flutter/material.dart';
import 'package:flutter_clean_template/core/extensions/connectivity_result.dart';
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
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              _buildNumberWidget(state),
              _buildTimerButton(),
              const Spacer(),
              _buildConnectivityLabel(state),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNumberWidget(RandomIntViewerState state) {
    return state.requestStatus.when(
      notStarted: () => const SizedBox.shrink(),
      failed: () => const SizedBox.shrink(),
      cancelled: () => const SizedBox.shrink(),
      inProgress: () => const SizedBox(
        width: 60,
        height: 60,
        child: CircularProgressIndicator(),
      ),
      completed: () => Text(
        state.number.toString(),
        style: const TextStyle(
          color: Colors.white,
          fontSize: 48,
        ),
      ),
    );
  }

  Widget _buildConnectivityLabel(RandomIntViewerState state) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: state.connectivityState.color,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            state.connectivityState.status,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildTimerButton() {
    return RawMaterialButton(
      onPressed: cubit.onTapTimerButton,
      child: const Text(
        'Get random int',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}
