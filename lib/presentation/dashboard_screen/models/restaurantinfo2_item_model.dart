import '../../../core/app_export.dart';/// This class is used in the [restaurantinfo2_item_widget] screen.
class Restaurantinfo2ItemModel {Restaurantinfo2ItemModel({this.restaurantName, this.ratingText, this.id, }) { restaurantName = restaurantName  ?? "Restaurant Name";ratingText = ratingText  ?? "4.8";id = id  ?? ""; }

String? restaurantName;

String? ratingText;

String? id;

 }
