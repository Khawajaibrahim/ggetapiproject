import 'package:dio/dio.dart';

import 'network_client.dart';

class ApiService {
  final NetworkClient networkClient;
  ApiService({required this.networkClient});


  Future<Response> login(Map<String, Object> params) {
    return networkClient.post('login-user', params);
  }

    Future<Response> Signup(Map<String, Object> params) {
    return networkClient.post('register-user', params);
  }

  Future<Response> logout() {
    return networkClient.post('user-logout', {});
  }

  // Future<Response> getDictionaryData() {
  //   return networkClient.get('api/dictionary_data', {});
  // }

}
