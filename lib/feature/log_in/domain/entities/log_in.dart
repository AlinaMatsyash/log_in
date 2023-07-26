import 'package:equatable/equatable.dart';

class LogIn extends Equatable {
  final String token;

  const LogIn({
    required this.token,
  });

  @override
  List<Object> get props => [token];
}
