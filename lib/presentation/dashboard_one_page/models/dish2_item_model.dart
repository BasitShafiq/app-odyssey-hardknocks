import '../../../core/app_export.dart';/// This class is used in the [dish2_item_widget] screen.
class Dish2ItemModel {Dish2ItemModel({this.foodName, this.details, this.rs, this.price, this.foodImage, this.id, }) { foodName = foodName  ?? "Food 2";details = details  ?? "Some Details";rs = rs  ?? "Rs";price = price  ?? "285";foodImage = foodImage  ?? ImageConstant.imgFavpngSalad1;id = id  ?? ""; }

String? foodName;

String? details;

String? rs;

String? price;

String? foodImage;

String? id;

 }
