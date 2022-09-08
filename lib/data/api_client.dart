import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ryalize_task/data/models/auth_model.dart';

class ApiClient extends GetConnect{
  final baseUrl = "http://restapi.adequateshop.com";  /*Overriding and initializing the baseUrl instance of our
                                                      parent class i.e GetConnect. So that we don't need to write it whenever baseUrl is needed. */


  final String _login = "/api/authaccount/login";
  final String _signup = "/api/authaccount/registration";


  Future<AuthModel>login(String email,String password) async{

    /*we only need to add EndPoint to the post method of GetConnect as we have already added the baseUrl above
    and initialized the GetConnect instnace*/

    final response = await post(_login,{
      "email":email,
      "password":password
    });

    if(response.status.hasError){
      return Future.error(response.statusText!); // Returns error to the future whenever there is an Exception.
    }else{
      AuthModel model = AuthModel.fromJson(response.body);
      return model; //Returns Model object to the future method when we have successful response from api.
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