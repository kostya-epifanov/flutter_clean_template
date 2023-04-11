import 'package:equatable/equatable.dart';
import 'package:flutter_clean_template/core/network/http/request_status.dart';

class RandomIntViewerState extends Equatable {
  final RequestStatus requestStatus;
  final int value;

  const RandomIntViewerState({
    this.requestStatus = const RequestStatus.notStarted(),
    this.value = 0,
  });

  RandomIntViewerState copyWith({
    RequestStatus? requestStatus,
    int? value,
  }) {
    return RandomIntViewerState(
      requestStatus: requestStatus ?? this.requestStatus,
      value: value ?? this.value,
    );
  }

  @override
  List<Object> get props => [
        requestStatus,
        value,
      ];
}
