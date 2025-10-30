import 'package:dio/dio.dart';
import 'package:doc_doc/core/networking/api_service.dart';
import 'package:doc_doc/features/login/data/repos/login_repo.dart';
import 'package:doc_doc/features/login/presentation/logic/login_cubit/login_cubit.dart';
import 'package:doc_doc/features/sign%20up/data/repos/sign_up_repo.dart';
import 'package:doc_doc/features/sign%20up/presentation/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> initGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(apiService: getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  getIt.registerLazySingleton<SignUpRepo>(
    () => SignUpRepo(apiService: getIt()),
  );
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}
