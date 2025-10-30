import 'package:dio/dio.dart';
import 'package:doc_doc/core/networking/api_constants.dart';
import 'package:doc_doc/features/login/data/models/login_request_body.dart';
import 'package:doc_doc/features/login/data/models/login_response.dart';
import 'package:doc_doc/features/sign%20up/data/models/sign_up_request_body.dart';
import 'package:doc_doc/features/sign%20up/data/models/sign_up_response.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  // Login API
  @POST(ApiConstants.loginEndpoint)
  Future<LoginResponse> login(@Body() LoginRequestBody body);

  // Signup API
  @POST(ApiConstants.registerEndpoint)
  Future<SignupResponse> signup(@Body() SignupRequestBody signupRequestBody);
}
