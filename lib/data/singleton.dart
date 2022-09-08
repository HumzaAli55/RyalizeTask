import 'package:ryalize_task/asset_images/asset_images.dart';
import 'package:ryalize_task/data/localCache.dart';
import 'package:ryalize_task/data/respository.dart';

class Singleton{

  //Initializing all the classes which are we will need throughout the app

  AssetImages assetImages = AssetImages();
  Repository repository = Repository();
  LocalCache cache = LocalCache();


  static final Singleton singleton = Singleton._internal();

  factory Singleton() {
    return singleton;
  }

  Singleton._internal();


}