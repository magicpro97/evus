import 'package:evus/data/models/base_model.dart';

abstract class BaseResponse<T> extends BaseModel {
  final int code;

  final String message;

  final T data;

  BaseResponse({this.code, this.message, this.data});

  @override
  List<Object> get props => [code, message];
}
