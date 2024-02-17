import '../../../core/app_export.dart';/// This class is used in the [dish5_item_widget] screen.
class Dish5ItemModel {Dish5ItemModel({this.foodName, this.foodDetails, this.currencySymbol, this.price, this.foodImage, this.id, }) { foodName = foodName  ?? "Food 2";foodDetails = foodDetails  ?? "Some Details";currencySymbol = currencySymbol  ?? "Rs";price = price  ?? "285";foodImage = foodImage  ?? ImageConstant.imgFavpngSalad1;id = id  ?? ""; }

String? foodName;

String? foodDetails;

String? currencySymbol;

String? price;

String? foodImage;

String? id;

 }
