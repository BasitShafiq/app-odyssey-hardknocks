import '../../../core/app_export.dart';/// This class is used in the [dish3_item_widget] screen.
class Dish3ItemModel {Dish3ItemModel({this.foodName, this.details, this.currency, this.price, this.foodImage, this.id, }) { foodName = foodName  ?? "Food 2";details = details  ?? "Some Details";currency = currency  ?? "Rs";price = price  ?? "285";foodImage = foodImage  ?? ImageConstant.imgFavpngSalad1;id = id  ?? ""; }

String? foodName;

String? details;

String? currency;

String? price;

String? foodImage;

String? id;

 }
