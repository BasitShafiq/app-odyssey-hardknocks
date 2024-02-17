import '../../../core/app_export.dart';/// This class is used in the [restaurantprofile_item_widget] screen.
class RestaurantprofileItemModel {RestaurantprofileItemModel({this.restaurantImage, this.restaurantName, this.ratingText, this.restaurantDescription, this.id, }) { restaurantImage = restaurantImage  ?? ImageConstant.imgRectangle32161x322;restaurantName = restaurantName  ?? "Restaurant Name";ratingText = ratingText  ?? "4.8";restaurantDescription = restaurantDescription  ?? "Restaurant Description Restaurant\nDescription ";id = id  ?? ""; }

String? restaurantImage;

String? restaurantName;

String? ratingText;

String? restaurantDescription;

String? id;

 }
