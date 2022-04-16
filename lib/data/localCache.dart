import 'package:get_storage/get_storage.dart';

class LocalCache{
GetStorage _storage = GetStorage();

 void setEmail (String email){
   _storage.write("email", email);
 }

 dynamic getEmail(){
  return _storage.read("email");
 }

}