import 'package:evus/data/repositories/base_repository.dart';
import 'package:evus/data/sources/cache/cached_box.dart';

abstract class TokenRepository extends BaseRepository {
  final CachedBox _cachedBox;

  TokenRepository(this._cachedBox);

  Future<void> saveToken(String token);

  String getToken();
}

class TokenRepositoryImpl extends TokenRepository {
  TokenRepositoryImpl(CachedBox cachedBox) : super(cachedBox);

  @override
  String getToken() => _cachedBox.getToken();

  @override
  Future<void> saveToken(String token) => _cachedBox.saveToken(token);
}
