import 'package:doc_doc/core/networking/api_error_handler.dart';
import 'package:doc_doc/core/networking/api_result.dart';
import 'package:doc_doc/core/networking/api_service.dart';
import 'package:doc_doc/features/login/data/models/login_request_body.dart';
import 'package:doc_doc/features/login/data/models/login_response.dart';

class LoginRepo {
  final ApiService apiService;

  LoginRepo({required this.apiService});
  Future<ApiResult<LoginResponse>> login(LoginRequestBody body) async {
    try {
      final response = await apiService.login(body);
      return ApiResult.success(response);
    } on Exception catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
