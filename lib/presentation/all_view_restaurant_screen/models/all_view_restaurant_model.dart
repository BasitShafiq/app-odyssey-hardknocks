import 'restaurantlist1_item_model.dart';import '../../../core/app_export.dart';import 'restaurantprofile_item_model.dart';class AllViewRestaurantModel {List<Restaurantlist1ItemModel> restaurantlist1ItemList = List.generate(4,(index) => Restaurantlist1ItemModel());

List<RestaurantprofileItemModel> restaurantprofileItemList = [RestaurantprofileItemModel(restaurantImage:ImageConstant.imgRectangle32161x322,restaurantName: "Restaurant Name",ratingText: "4.8",restaurantDescription: "Restaurant Description Restaurant\nDescription "),RestaurantprofileItemModel(restaurantImage:ImageConstant.imgRectangle32193x322)];

 }
