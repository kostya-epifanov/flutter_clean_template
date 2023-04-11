// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RequestStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notStarted,
    required TResult Function() inProgress,
    required TResult Function() completed,
    required TResult Function() cancelled,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notStarted,
    TResult? Function()? inProgress,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
    TResult? Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notStarted,
    TResult Function()? inProgress,
    TResult Function()? completed,
    TResult Function()? cancelled,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotStarted value) notStarted,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(Completed value) completed,
    required TResult Function(Cancelled value) cancelled,
    required TResult Function(Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotStarted value)? notStarted,
    TResult? Function(InProgress value)? inProgress,
    TResult? Function(Completed value)? completed,
    TResult? Function(Cancelled value)? cancelled,
    TResult? Function(Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotStarted value)? notStarted,
    TResult Function(InProgress value)? inProgress,
    TResult Function(Completed value)? completed,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestStatusCopyWith<$Res> {
  factory $RequestStatusCopyWith(
          RequestStatus value, $Res Function(RequestStatus) then) =
      _$RequestStatusCopyWithImpl<$Res, RequestStatus>;
}

/// @nodoc
class _$RequestStatusCopyWithImpl<$Res, $Val extends RequestStatus>
    implements $RequestStatusCopyWith<$Res> {
  _$RequestStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NotStartedCopyWith<$Res> {
  factory _$$NotStartedCopyWith(
          _$NotStarted value, $Res Function(_$NotStarted) then) =
      __$$NotStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotStartedCopyWithImpl<$Res>
    extends _$RequestStatusCopyWithImpl<$Res, _$NotStarted>
    implements _$$NotStartedCopyWith<$Res> {
  __$$NotStartedCopyWithImpl(
      _$NotStarted _value, $Res Function(_$NotStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotStarted implements NotStarted {
  const _$NotStarted();

  @override
  String toString() {
    return 'RequestStatus.notStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notStarted,
    required TResult Function() inProgress,
    required TResult Function() completed,
    required TResult Function() cancelled,
    required TResult Function() failed,
  }) {
    return notStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notStarted,
    TResult? Function()? inProgress,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
    TResult? Function()? failed,
  }) {
    return notStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notStarted,
    TResult Function()? inProgress,
    TResult Function()? completed,
    TResult Function()? cancelled,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (notStarted != null) {
      return notStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotStarted value) notStarted,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(Completed value) completed,
    required TResult Function(Cancelled value) cancelled,
    required TResult Function(Failed value) failed,
  }) {
    return notStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotStarted value)? notStarted,
    TResult? Function(InProgress value)? inProgress,
    TResult? Function(Completed value)? completed,
    TResult? Function(Cancelled value)? cancelled,
    TResult? Function(Failed value)? failed,
  }) {
    return notStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotStarted value)? notStarted,
    TResult Function(InProgress value)? inProgress,
    TResult Function(Completed value)? completed,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (notStarted != null) {
      return notStarted(this);
    }
    return orElse();
  }
}

abstract class NotStarted implements RequestStatus {
  const factory NotStarted() = _$NotStarted;
}

/// @nodoc
abstract class _$$InProgressCopyWith<$Res> {
  factory _$$InProgressCopyWith(
          _$InProgress value, $Res Function(_$InProgress) then) =
      __$$InProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InProgressCopyWithImpl<$Res>
    extends _$RequestStatusCopyWithImpl<$Res, _$InProgress>
    implements _$$InProgressCopyWith<$Res> {
  __$$InProgressCopyWithImpl(
      _$InProgress _value, $Res Function(_$InProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InProgress implements InProgress {
  const _$InProgress();

  @override
  String toString() {
    return 'RequestStatus.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notStarted,
    required TResult Function() inProgress,
    required TResult Function() completed,
    required TResult Function() cancelled,
    required TResult Function() failed,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notStarted,
    TResult? Function()? inProgress,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
    TResult? Function()? failed,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notStarted,
    TResult Function()? inProgress,
    TResult Function()? completed,
    TResult Function()? cancelled,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotStarted value) notStarted,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(Completed value) completed,
    required TResult Function(Cancelled value) cancelled,
    required TResult Function(Failed value) failed,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotStarted value)? notStarted,
    TResult? Function(InProgress value)? inProgress,
    TResult? Function(Completed value)? completed,
    TResult? Function(Cancelled value)? cancelled,
    TResult? Function(Failed value)? failed,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotStarted value)? notStarted,
    TResult Function(InProgress value)? inProgress,
    TResult Function(Completed value)? completed,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class InProgress implements RequestStatus {
  const factory InProgress() = _$InProgress;
}

/// @nodoc
abstract class _$$CompletedCopyWith<$Res> {
  factory _$$CompletedCopyWith(
          _$Completed value, $Res Function(_$Completed) then) =
      __$$CompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompletedCopyWithImpl<$Res>
    extends _$RequestStatusCopyWithImpl<$Res, _$Completed>
    implements _$$CompletedCopyWith<$Res> {
  __$$CompletedCopyWithImpl(
      _$Completed _value, $Res Function(_$Completed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Completed implements Completed {
  const _$Completed();

  @override
  String toString() {
    return 'RequestStatus.completed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Completed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notStarted,
    required TResult Function() inProgress,
    required TResult Function() completed,
    required TResult Function() cancelled,
    required TResult Function() failed,
  }) {
    return completed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notStarted,
    TResult? Function()? inProgress,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
    TResult? Function()? failed,
  }) {
    return completed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notStarted,
    TResult Function()? inProgress,
    TResult Function()? completed,
    TResult Function()? cancelled,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotStarted value) notStarted,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(Completed value) completed,
    required TResult Function(Cancelled value) cancelled,
    required TResult Function(Failed value) failed,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotStarted value)? notStarted,
    TResult? Function(InProgress value)? inProgress,
    TResult? Function(Completed value)? completed,
    TResult? Function(Cancelled value)? cancelled,
    TResult? Function(Failed value)? failed,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotStarted value)? notStarted,
    TResult Function(InProgress value)? inProgress,
    TResult Function(Completed value)? completed,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class Completed implements RequestStatus {
  const factory Completed() = _$Completed;
}

/// @nodoc
abstract class _$$CancelledCopyWith<$Res> {
  factory _$$CancelledCopyWith(
          _$Cancelled value, $Res Function(_$Cancelled) then) =
      __$$CancelledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelledCopyWithImpl<$Res>
    extends _$RequestStatusCopyWithImpl<$Res, _$Cancelled>
    implements _$$CancelledCopyWith<$Res> {
  __$$CancelledCopyWithImpl(
      _$Cancelled _value, $Res Function(_$Cancelled) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Cancelled implements Cancelled {
  const _$Cancelled();

  @override
  String toString() {
    return 'RequestStatus.cancelled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Cancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notStarted,
    required TResult Function() inProgress,
    required TResult Function() completed,
    required TResult Function() cancelled,
    required TResult Function() failed,
  }) {
    return cancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notStarted,
    TResult? Function()? inProgress,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
    TResult? Function()? failed,
  }) {
    return cancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notStarted,
    TResult Function()? inProgress,
    TResult Function()? completed,
    TResult Function()? cancelled,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotStarted value) notStarted,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(Completed value) completed,
    required TResult Function(Cancelled value) cancelled,
    required TResult Function(Failed value) failed,
  }) {
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotStarted value)? notStarted,
    TResult? Function(InProgress value)? inProgress,
    TResult? Function(Completed value)? completed,
    TResult? Function(Cancelled value)? cancelled,
    TResult? Function(Failed value)? failed,
  }) {
    return cancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotStarted value)? notStarted,
    TResult Function(InProgress value)? inProgress,
    TResult Function(Completed value)? completed,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }
}

abstract class Cancelled implements RequestStatus {
  const factory Cancelled() = _$Cancelled;
}

/// @nodoc
abstract class _$$FailedCopyWith<$Res> {
  factory _$$FailedCopyWith(_$Failed value, $Res Function(_$Failed) then) =
      __$$FailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedCopyWithImpl<$Res>
    extends _$RequestStatusCopyWithImpl<$Res, _$Failed>
    implements _$$FailedCopyWith<$Res> {
  __$$FailedCopyWithImpl(_$Failed _value, $Res Function(_$Failed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Failed implements Failed {
  const _$Failed();

  @override
  String toString() {
    return 'RequestStatus.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Failed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notStarted,
    required TResult Function() inProgress,
    required TResult Function() completed,
    required TResult Function() cancelled,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notStarted,
    TResult? Function()? inProgress,
    TResult? Function()? completed,
    TResult? Function()? cancelled,
    TResult? Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notStarted,
    TResult Function()? inProgress,
    TResult Function()? completed,
    TResult Function()? cancelled,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotStarted value) notStarted,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(Completed value) completed,
    required TResult Function(Cancelled value) cancelled,
    required TResult Function(Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotStarted value)? notStarted,
    TResult? Function(InProgress value)? inProgress,
    TResult? Function(Completed value)? completed,
    TResult? Function(Cancelled value)? cancelled,
    TResult? Function(Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotStarted value)? notStarted,
    TResult Function(InProgress value)? inProgress,
    TResult Function(Completed value)? completed,
    TResult Function(Cancelled value)? cancelled,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class Failed implements RequestStatus {
  const factory Failed() = _$Failed;
}
