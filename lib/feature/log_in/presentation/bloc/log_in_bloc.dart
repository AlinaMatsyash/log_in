import 'package:bloc/bloc.dart';
import 'package:mega/feature/log_in/domain/usecases/get_log_in.dart';

import '../../../../core/error/failures.dart';
import './bloc.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';

class LogInBloc extends Bloc<LogInEvent, LogInState> {
  final GetLogIn getLogIn;

  LogInBloc({
    required GetLogIn concrete,
  })  : getLogIn = concrete,
        super(Empty()) {
    on<LogInEvent>((event, emit) async {
      if (event is GetTokenEvent) {
        emit(Loading());
        final failureOrTrivia = await getLogIn(
            Params(login: event.login, password: event.password));
        failureOrTrivia.fold(
            (failure) => emit(Error(message: _mapFailureToMessage(failure))),
            (token) => emit(Loaded(token: token)));
      }
    });
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      default:
        return 'Unexpected error';
    }
  }
}
