import 'package:get/get.dart';
import 'package:qureos_auth_project/data/models/auth_model.dart';

class ApiClient extends GetConnect{
  final baseUrl = "http://restapi.adequateshop.com";

  final String _login = "/api/authaccount/login";
  final String _signup = "/api/authaccount/registration";


  Future<AuthModel>login(String email,String password) async{
    final response = await post(_login,{
      "email":email,
      "password":password
    });

    if(response.status.hasError){
      return Future.error(response.statusText!);
    }else{
      AuthModel model = AuthModel.fromJson(response.body);
      return model;
    }

  }



  Future<AuthModel>singup(String name,String email,String password) async{
    final response = await post(_signup,{
      "name":name,
      "email":email,
      "password":password
    });
    if(response.status.hasError){
      return Future.error(response.statusText!);
    }else{
      AuthModel model = AuthModel.fromJson(response.body);
      return model;
    }

  }


}