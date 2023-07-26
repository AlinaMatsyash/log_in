import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class LogInEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetTokenEvent extends LogInEvent {
  final String login;
  final String password;

  GetTokenEvent(this.login, this.password);

  @override
  List<Object> get props => [login,password];
}
