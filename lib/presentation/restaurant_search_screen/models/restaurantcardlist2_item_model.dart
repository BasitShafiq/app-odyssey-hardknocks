import '../../../core/app_export.dart';/// This class is used in the [restaurantcardlist2_item_widget] screen.
class Restaurantcardlist2ItemModel {Restaurantcardlist2ItemModel({this.restaurantName, this.location, this.loremIpsumDolor, this.thirtyFive, this.image, this.distance, this.crowded, this.id, }) { restaurantName = restaurantName  ?? "Restaurant Name";location = location  ?? "Location";loremIpsumDolor = loremIpsumDolor  ?? "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor consectetur adipiscing elit";thirtyFive = thirtyFive  ?? "3.5";image = image  ?? ImageConstant.imgImage580x80;distance = distance  ?? "1.2 km from your Location";crowded = crowded  ?? "Crowded";id = id  ?? ""; }

String? restaurantName;

String? location;

String? loremIpsumDolor;

String? thirtyFive;

String? image;

String? distance;

String? crowded;

String? id;

 }
