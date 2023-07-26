import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../../core/error/exceptions.dart';
import '../models/log_in_model.dart';

abstract class LogInRemoteDataSource {

  Future<LogInModel> getLogIn(String login, String password);

}

class LogInRemoteDataSourceImpl implements LogInRemoteDataSource {
  final http.Client client;

  LogInRemoteDataSourceImpl({required this.client});

  @override
  Future<LogInModel> getLogIn(String login, String password) =>
      _getLogInFromUrl('http://158.160.14.209');



  Future<LogInModel> _getLogInFromUrl(String url) async {
    final response = await client.get(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return LogInModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
