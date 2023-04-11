import 'package:flutter_clean_template/features/random_int_viewer/data/datasources/random_int_datasource.dart';

abstract class IRandomIntRepository {
  Future<int> getRandomInt();
}

class RandomIntRepository implements IRandomIntRepository {
  final IRandomIntDataSource _dataSource;

  RandomIntRepository(this._dataSource);

  @override
  Future<int> getRandomInt() async {
    return _dataSource.getRandomInt();
  }
}