import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/entities/log_in.dart';
import '../../domain/repositories/log_in_repository.dart';
import '../datasources/log_in_data_source.dart';

class LogInRepositoryImpl implements LogInRepository {
  final LogInRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  LogInRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, LogIn>> getLogIn(String login, String password) async {
    return await _getLogIn(() {
      return remoteDataSource.getLogIn(login, password);
    });
  }

  Future<Either<Failure, LogIn>> _getLogIn(
    get,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteTrivia = await get();
        return Right(remoteTrivia);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(ServerFailure());
    }
  }
}
