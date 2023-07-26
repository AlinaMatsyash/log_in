import 'package:equatable/equatable.dart';
import 'package:mega/feature/log_in/domain/entities/log_in.dart';
import 'package:meta/meta.dart';

@immutable
abstract class LogInState extends Equatable {
  @override
  List<Object> get props => [];
}

class Empty extends LogInState {}

class Loading extends LogInState {}

class Loaded extends LogInState {
  final LogIn token;

  Loaded({required this.token});

  @override
  List<Object> get props => [token];
}

class Error extends LogInState {
  final String message;

  Error({required this.message});

  @override
  List<Object> get props => [message];
}
