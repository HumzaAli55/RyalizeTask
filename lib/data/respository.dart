import 'package:ryalize_task/data/api_client.dart';
import 'package:ryalize_task/data/models/auth_model.dart';

class Repository{
  ApiClient _apiClient = ApiClient();

  Future<AuthModel>signup(String name,String email,String password){
    return _apiClient.singup(name, email, password);
  }

  Future<AuthModel>login(String email,String password){
    return _apiClient.login(email, password);
  }

}