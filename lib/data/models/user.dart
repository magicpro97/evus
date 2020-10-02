import 'package:evus/data/models/base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends BaseModel {
  @JsonKey(includeIfNull: false)
  final int id;

  @JsonKey(includeIfNull: false)
  final String email;

  @JsonKey(includeIfNull: false)
  final String mobile;

  @JsonKey(includeIfNull: false)
  final String avatar;

  @JsonKey(includeIfNull: false)
  final String name;

  User({
    this.id,
    this.name,
    this.email,
    this.mobile,
    this.avatar,
  });

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  List<Object> get props => [id, name];
}
