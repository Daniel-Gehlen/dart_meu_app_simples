import 'package:dio/dio.dart';
import 'package:dart_meu_app_simples/data/models/user_model.dart';

abstract class UserRemoteDataSource {
  Future<List<UserModel>> getUsers();
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final Dio dio;
  
  UserRemoteDataSourceImpl({required this.dio});
  
  @override
  Future<List<UserModel>> getUsers() async {
    try {
      final response = await dio.get('https://jsonplaceholder.typicode.com/users');
      return (response.data as List)
          .map((json) => UserModel.fromJson(json))
          .toList();
    } catch (e) {
      throw Exception('Erro ao buscar usuários: $e');
    }
  }
}
