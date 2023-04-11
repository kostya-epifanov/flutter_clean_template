import 'dart:async';

typedef AnyResult = Result<dynamic, Exception>;
typedef ResultInvocation = AnyResult Function();
typedef AsyncResultInvocation = Future<AnyResult> Function();
typedef TypedAsyncResultInvocation<T> = Future<Result<T, Exception>> Function();

class Result<T, E extends Exception> {
  static bool silenceErrors = false;
  static late final Function(String) loggerCallback;
  static late final Function(
    dynamic throwable, {
    dynamic stackTrace,
    dynamic hint,
    FutureOr<void> Function(dynamic) withScope,
  }) analyticsCallback;

  bool get isError => this is Error<T, E>;

  bool get isSuccess => this is Success<T, E>;

  Error<T, E> get asError => this as Error<T, E>;

  Success<T, E> get asSuccess => this as Success<T, E>;

  E get errorResult => asError.error;

  StackTrace? get errorStackTrace => asError.stackTrace;

  T get successResult => asSuccess.value;

  void match({
    required Function(T value) onSuccess,
    required Function(E error) onError,
  }) {
    if (isSuccess) {
      onSuccess(asSuccess.value);
      return;
    }
    onError(asError.error);
  }

  T2 fold<T2>({
    required T2 Function(T value) onSuccess,
    required T2 Function(E error) onError,
  }) {
    if (isSuccess) {
      return onSuccess(asSuccess.value);
    }
    return onError(asError.error);
  }

  Result<T2, Exception> andThen<T2, E2 extends Exception>(
    Result<T2, E2> Function(T) thenFunction,
  ) {
    if (isSuccess) {
      return thenFunction(successResult);
    }
    return Error(errorResult, errorStackTrace);
  }

  Future<Result<T2, Exception>> andThenAsync<T2, E2 extends Exception>(
    Future<Result<T2, E2>> Function(T) thenFunction,
  ) async {
    if (isSuccess) {
      return thenFunction(successResult);
    }
    return Error(errorResult, errorStackTrace);
  }

  static Future<AnyResult> everyAsync(
    List<AsyncResultInvocation> events, {
    AnyResult Function(AnyResult result)? orElse,
  }) async {
    for (final event in events) {
      final element = await event.call();

      if (element.isSuccess) {
        continue;
      }
      if (orElse == null) {
        return element.asError;
      }
      orElse(element.asError);
    }

    return Success(null);
  }

  static AnyResult everySync(
    List<ResultInvocation> events, {
    AnyResult Function(AnyResult result)? orElse,
  }) {
    for (final event in events) {
      final element = event.call();

      if (element.isSuccess) {
        continue;
      }
      if (orElse == null) {
        return element.asError;
      }
      orElse(element.asError);
    }

    return Success(null);
  }

  static Future<Result<T, Exception>> runGuarded<T>(
    Future<T> Function() action, {
    Function()? onSuccess,
    Future? onError,
  }) async {
    try {
      final value = await action.call();

      if (onSuccess != null) {
        return onSuccess();
      }
      return Success(value);
    } on Exception catch (e) {
      if (onError != null) {
        return await onError;
      }
      return Future.value(Error(e));
    }
  }

  static Future<List<AnyResult>> listAsync(
    List<AsyncResultInvocation> events, {
    AnyResult Function(AnyResult result)? orElse,
  }) async {
    final results = <AnyResult>[];

    for (final event in events) {
      final element = await event.call();

      if (element.isSuccess) {
        results.add(element);
        continue;
      } else if (orElse != null) {
        return [element.asError];
      } else {
        throw Exception('Error in listAsync: $element');
      }
    }

    return results;
  }
}

class Success<T, E extends Exception> extends Result<T, E> {
  final T _value;

  T get value => _value;

  Success(this._value);

  @override
  String toString() => 'Success(_value: $_value)';
}

class Error<T, E extends Exception> extends Result<T, E> {
  final E _error;
  final StackTrace? _stackTrace;

  E get error => _error;

  StackTrace? get stackTrace => _stackTrace;

  Error(this._error, [this._stackTrace]) {
    if (Result.silenceErrors) return;

    Result.analyticsCallback(_error, stackTrace: stackTrace);
    Result.loggerCallback(toString());
  }

  @override
  String toString() => 'Error: $_error\nStackTrace:\n$_stackTrace';
}
