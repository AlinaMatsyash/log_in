import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mega/feature/log_in/data/datasources/log_in_data_source.dart';
import 'package:mega/feature/log_in/data/repositories/log_in_repository_impl.dart';
import 'package:mega/feature/log_in/domain/repositories/log_in_repository.dart';
import 'package:mega/feature/log_in/domain/usecases/get_log_in.dart';
import 'package:mega/feature/log_in/presentation/bloc/log_in_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/network/network_info.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc
  sl.registerFactory(
    () => LogInBloc(
      concrete: sl(),
    ),
  );

  // Use cases
  sl.registerLazySingleton(() => GetLogIn(sl()));

  // Repository
  sl.registerLazySingleton<LogInRepository>(
    () => LogInRepositoryImpl(
      networkInfo: sl(),
      remoteDataSource: sl(),
    ),
  );

  // Data sources
  sl.registerLazySingleton<LogInRemoteDataSource>(
    () => LogInRemoteDataSourceImpl(client: sl()),
  );

  // Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
