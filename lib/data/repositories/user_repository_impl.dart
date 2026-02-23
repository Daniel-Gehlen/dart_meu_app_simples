import 'package:dartz/dartz.dart';
import 'package:dart_meu_app_simples/core/error/failures.dart';
import 'package:dart_meu_app_simples/core/network/network_info.dart';
import 'package:dart_meu_app_simples/data/datasources/user_remote_datasource.dart';
import 'package:dart_meu_app_simples/domain/entities/user.dart';
import 'package:dart_meu_app_simples/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;
  
  UserRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });
  
  @override
  Future<Either<Failure, List<User>>> getUsers() async {
    if (await networkInfo.isConnected) {
      try {
        final users = await remoteDataSource.getUsers();
        return Right(users);
      } catch (e) {
        return Left(ServerFailure(e.toString()));
      }
    } else {
      return Left(NetworkFailure());
    }
  }
}
