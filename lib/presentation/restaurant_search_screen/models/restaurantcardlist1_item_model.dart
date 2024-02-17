import '../../../core/app_export.dart';/// This class is used in the [restaurantcardlist1_item_widget] screen.
class Restaurantcardlist1ItemModel {Restaurantcardlist1ItemModel({this.restaurantImage, this.restaurantName, this.rating, this.location, this.description, this.distanceText, this.crowded, this.id, }) { restaurantImage = restaurantImage  ?? ImageConstant.imgImage5;restaurantName = restaurantName  ?? "Restaurant Name";rating = rating  ?? "3.5";location = location  ?? "Location";description = description  ?? "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor consectetur adipiscing elit";distanceText = distanceText  ?? "1.2 km from your Location";crowded = crowded  ?? "Crowded";id = id  ?? ""; }

String? restaurantImage;

String? restaurantName;

String? rating;

String? location;

String? description;

String? distanceText;

String? crowded;

String? id;

 }
