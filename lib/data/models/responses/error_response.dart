import 'base_response.dart';

class ErrorResponse extends BaseResponse {

  ErrorResponse({
    int code,
    String message,
  }) : super(
          code: code,
          message: message,
        );

  factory ErrorResponse.fromJson(Map<String, dynamic> json) {
    return ErrorResponse(
      code: json['code'] as int,
      message: json['message'] as String,
    );
  }

  @override
  List<Object> get props => [data];
}
