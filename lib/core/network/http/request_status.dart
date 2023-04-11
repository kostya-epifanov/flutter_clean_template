import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_status.freezed.dart';

@freezed
class RequestStatus with _$RequestStatus {
  const factory RequestStatus.notStarted() = NotStarted;
  const factory RequestStatus.inProgress() = InProgress;
  const factory RequestStatus.completed() = Completed;
  const factory RequestStatus.cancelled() = Cancelled;
  const factory RequestStatus.failed() = Failed;
}