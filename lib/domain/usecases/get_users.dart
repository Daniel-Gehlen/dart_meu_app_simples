import 'package:dartz/dartz.dart';
import 'package:dart_meu_app_simples/core/error/failures.dart';
import 'package:dart_meu_app_simples/domain/entities/user.dart';
import 'package:dart_meu_app_simples/domain/repositories/user_repository.dart';

class GetUsers {
  final UserRepository repository;
  
  GetUsers(this.repository);
  
  Future<Either<Failure, List<User>>> call() {
    return repository.getUsers();
  }
}
