import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_template/core/di/locator.dart';

abstract class InjectableState<T extends StatefulWidget, G extends BlocBase<S>, S>
    extends State<T> {
  @protected
  @visibleForTesting
  late G cubit;

  void Function(G cubit)? _onCubitCreated;

  final bool _shouldProvide;

  InjectableState({
    void Function(G cubit)? onCubitCreated,
  })  : cubit = locator.get<G>(),
        _onCubitCreated = onCubitCreated,
        _shouldProvide = true,
        super();

  InjectableState.empty()
      : _shouldProvide = false,
        super();

  InjectableState.singleton()
      : _shouldProvide = false,
        cubit = locator(),
        super();

  InjectableState.withParams({
    param1,
    param2,
  })  : _shouldProvide = true,
        cubit = locator.get<G>(param1: param1, param2: param2),
        super();

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    try {
      cubit;
    } on Exception catch (_) {
      throw 'At first you need init the cubit in [initState], [didChangeDependencies] or in [getIt]';
    }
    super.didChangeDependencies();
  }

  Widget builder(BuildContext context, S state);

  void listener(BuildContext context, S state) {}

  bool buildWhen(S previous, S current) => true;

  bool listenWhen(S previous, S current) => true;

  @override
  Widget build(BuildContext context) {
    final consumer = BlocConsumer<G, S>(
      bloc: _shouldProvide ? null : cubit,
      buildWhen: buildWhen,
      listenWhen: listenWhen,
      builder: builder,
      listener: listener,
    );
    final provider = _shouldProvide
        ? BlocProvider(
            lazy: false,
            create: (context) {
              _onCubitCreated?.call(cubit);
              return cubit;
            },
            child: consumer,
          )
        : BlocProvider.value(
            value: cubit,
            child: consumer,
          );
    return provider;
  }
}
