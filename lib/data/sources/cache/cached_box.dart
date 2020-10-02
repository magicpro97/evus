import 'package:evus/data/sources/cache/base_cached_datasource.dart';
import 'package:get_storage/get_storage.dart';

abstract class CachedBox extends BaseCachedDataSource {
  static const TOKEN_KEY = 'token';

  final GetStorage _box;

  CachedBox(this._box);

  bool hasToken();

  Future<void> saveToken(String token);

  String getToken();
}

class CachedBoxImpl extends CachedBox {
  CachedBoxImpl(GetStorage box) : super(box);

  @override
  bool hasToken() => _box.hasData(CachedBox.TOKEN_KEY);

  @override
  String getToken() => _box.read<String>(CachedBox.TOKEN_KEY);

  @override
  Future<void> saveToken(String token) =>
      _box.write(CachedBox.TOKEN_KEY, token);
}
