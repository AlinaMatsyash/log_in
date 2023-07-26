import '../../domain/entities/log_in.dart';

class LogInModel extends LogIn {
  const LogInModel({
    required String token,
  }) : super(token: token);

  factory LogInModel.fromJson(Map<String, dynamic> json) {
    return LogInModel(
      token: json['token'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'token': token,
    };
  }
}
