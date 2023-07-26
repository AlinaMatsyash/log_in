import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/log_in.dart';
import '../repositories/log_in_repository.dart';

class GetLogIn implements UseCase<LogIn, Params> {
  final LogInRepository repository;

  GetLogIn(this.repository);

  @override
  Future<Either<Failure, LogIn>> call(Params params) async {
    return await repository.getLogIn(params.login,params.password);
  }
}

class Params extends Equatable {
  final String login;
  final String password;

  Params({required this.login, required this.password});

  @override
  List<Object> get props => [login,password];
}
