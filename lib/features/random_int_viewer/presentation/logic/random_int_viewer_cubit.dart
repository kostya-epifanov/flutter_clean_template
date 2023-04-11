import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_template/features/common/domain/listen_connectivity_usecase.dart';
import 'package:flutter_clean_template/features/random_int_viewer/domain/usecases/get_random_int_usecase.dart';
import 'package:flutter_clean_template/features/random_int_viewer/presentation/logic/random_int_viewer_state.dart';

class RandomIntViewerCubit extends Cubit<RandomIntViewerState> {
  final ListenConnectivityUseCase _listenConnectivityUsecase;
  final GetRandomIntUseCase _getRandomIntUseCase;

  final List<StreamSubscription> _subscriptions = [];

  RandomIntViewerCubit(
    this._listenConnectivityUsecase,
    this._getRandomIntUseCase,
  ) : super(const RandomIntViewerState()) {
    _subscriptions.add(_listenConnectivityUsecase()
        .listen((event) => emit(state.copyWith(connectivityState: event))));
  }

  @override
  Future<void> close() {
    for (final s in _subscriptions) {
      s.cancel();
    }
    return super.close();
  }
}
