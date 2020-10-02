import 'package:evus/data/models/responses/login_response.dart';
import 'package:evus/data/repositories/base_repository.dart';
import 'package:evus/data/sources/cache/cached_box.dart';
import 'package:evus/data/sources/remote/user_service.dart';

abstract class UserRepository extends BaseRepository {
  final CachedBox _cachedBox;
  final UserService _userService;

  UserRepository(this._cachedBox, this._userService);

  bool isLogin();

  Future<LoginResponse> login({String username, String password});
}

class UserRepositoryImpl extends UserRepository {
  UserRepositoryImpl(
    CachedBox cachedBox,
    UserService userService,
  ) : super(cachedBox, userService);

  @override
  bool isLogin() {
    final token = _cachedBox.getToken();

    if (token == null || token.isEmpty) {
      return false;
    }
    return true;
  }

  @override
  Future<LoginResponse> login({String username, String password}) =>
      _userService.login(userLogin: username, password: password);
}
