import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dart_meu_app_simples/core/network/network_info.dart';
import 'package:dart_meu_app_simples/data/datasources/user_remote_datasource.dart';
import 'package:dart_meu_app_simples/data/repositories/user_repository_impl.dart';
import 'package:dart_meu_app_simples/domain/repositories/user_repository.dart';
import 'package:dart_meu_app_simples/domain/usecases/get_users.dart';
import 'package:dart_meu_app_simples/presentation/controllers/user_controller.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    // External
    Get.lazyPut(() => Dio());
    Get.lazyPut(() => Connectivity());
    
    // Core
    Get.lazyPut<NetworkInfo>(() => NetworkInfoImpl(Get.find()));
    
    // Data sources
    Get.lazyPut<UserRemoteDataSource>(
      () => UserRemoteDataSourceImpl(dio: Get.find()),
    );
    
    // Repositories
    Get.lazyPut<UserRepository>(
      () => UserRepositoryImpl(
        remoteDataSource: Get.find(),
        networkInfo: Get.find(),
      ),
    );
    
    // Use cases
    Get.lazyPut(() => GetUsers(Get.find()));
    
    // Controllers
    Get.lazyPut(() => UserController(getUsers: Get.find()));
  }
}
