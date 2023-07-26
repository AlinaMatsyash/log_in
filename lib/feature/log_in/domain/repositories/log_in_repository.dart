import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/log_in.dart';

abstract class LogInRepository {
  Future<Either<Failure, LogIn>> getLogIn(String login, String password);
}
