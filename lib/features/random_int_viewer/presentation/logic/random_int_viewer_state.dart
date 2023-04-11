import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_clean_template/core/network/http/request_status.dart';

class RandomIntViewerState extends Equatable {
  final RequestStatus requestStatus;
  final ConnectivityResult connectivityState;
  final int number;
  final int timerCounter;

  const RandomIntViewerState({
    this.requestStatus = const RequestStatus.notStarted(),
    this.connectivityState = ConnectivityResult.none,
    this.number = -1,
    this.timerCounter = 30,
  });

  RandomIntViewerState copyWith({
    RequestStatus? requestStatus,
    ConnectivityResult? connectivityState,
    int? number,
    int? timerCounter,
  }) {
    return RandomIntViewerState(
      requestStatus: requestStatus ?? this.requestStatus,
      connectivityState: connectivityState ?? this.connectivityState,
      number: number ?? this.number,
      timerCounter: timerCounter ?? this.timerCounter,
    );
  }

  @override
  List<Object> get props => [
        requestStatus,
        connectivityState,
        number,
        timerCounter,
      ];
}
