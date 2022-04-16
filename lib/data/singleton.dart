import 'package:qureos_auth_project/asset_images/asset_images.dart';
import 'package:qureos_auth_project/data/localCache.dart';
import 'package:qureos_auth_project/data/respository.dart';

class Singleton{

  AssetImages assetImages = AssetImages();
  Repository repository = Repository();
  LocalCache cache = LocalCache();


  static final Singleton singleton = Singleton._internal();

  factory Singleton() {
    return singleton;
  }

  Singleton._internal();


}