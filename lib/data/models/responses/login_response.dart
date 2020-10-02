import 'package:evus/data/mapper/boolean_mapper.dart';
import 'package:evus/data/models/responses/base_response.dart';
import 'package:evus/data/models/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse extends BaseResponse<User> {
  @JsonKey(name: 'access_token')
  final String accessToken;

  @JsonKey(name: 'activated', fromJson: toBool)
  final bool isActivated;

  @JsonKey(name: 'verified', fromJson: toBool)
  final bool isVerify;

  final User user;

  LoginResponse({
    this.accessToken,
    this.isActivated,
    this.isVerify,
    this.user,
    int code,
    String message,
  }) : super(
          code: code,
          message: message,
          data: user,
        );

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  @override
  List<Object> get props => [accessToken];
}
