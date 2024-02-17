import '../../../core/app_export.dart';/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {Userprofile1ItemModel({this.nameText, this.priceText, this.itemsText, this.imageText, this.id, }) { nameText = nameText  ?? "Chicken Station";priceText = priceText  ?? "Rs. 350";itemsText = itemsText  ?? "03 Items";imageText = imageText  ?? "#162432";id = id  ?? ""; }

String? nameText;

String? priceText;

String? itemsText;

String? imageText;

String? id;

 }
