import 'package:dartz/dartz.dart';
import 'package:dart_meu_app_simples/core/error/failures.dart';
import 'package:dart_meu_app_simples/domain/entities/user.dart';

abstract class UserRepository {
  Future<Either<Failure, List<User>>> getUsers();
}
