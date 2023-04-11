import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_clean_template/core/network/http/request_status.dart';

class RandomIntViewerState extends Equatable {
  final RequestStatus requestStatus;
  final ConnectivityResult connectivityState;
  final int value;

  const RandomIntViewerState({
    this.requestStatus = const RequestStatus.notStarted(),
    this.connectivityState = ConnectivityResult.none,
    this.value = 0,
  });

  RandomIntViewerState copyWith({
    RequestStatus? requestStatus,
    ConnectivityResult? connectivityState,
    int? value,
  }) {
    return RandomIntViewerState(
      requestStatus: requestStatus ?? this.requestStatus,
      connectivityState: connectivityState ?? this.connectivityState,
      value: value ?? this.value,
    );
  }

  @override
  List<Object> get props => [
        requestStatus,
        connectivityState,
        value,
      ];
}
