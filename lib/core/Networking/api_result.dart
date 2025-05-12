import 'package:medimeet/core/Networking/api_error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_result.freezed.dart';

@Freezed()
abstract class ApiResult<T> with _$ApiResult<T> {
factory ApiResult.success(T data) = Success<T>;
factory ApiResult.failure(ApiErrorModel error) = Failure<T>;
}