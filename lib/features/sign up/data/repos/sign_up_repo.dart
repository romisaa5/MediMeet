import 'package:doc_doc/core/networking/api_error_handler.dart';
import 'package:doc_doc/core/networking/api_result.dart';
import 'package:doc_doc/core/networking/api_service.dart';
import 'package:doc_doc/features/sign%20up/data/models/sign_up_request_body.dart';
import 'package:doc_doc/features/sign%20up/data/models/sign_up_response.dart';

class SignUpRepo {
  final ApiService apiService;

  SignUpRepo({required this.apiService});
  Future<ApiResult<SignupResponse>> signup(
    SignupRequestBody signupRequestBody,
  ) async {
    try {
      final response = await apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    } on Exception catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
