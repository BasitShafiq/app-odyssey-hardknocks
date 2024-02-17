import 'package:flutter/material.dart';
import 'package:arest/presentation/start_screen/start_screen.dart';
import 'package:arest/presentation/log_in_screen/log_in_screen.dart';
import 'package:arest/presentation/sign_up_two_screen/sign_up_two_screen.dart';
import 'package:arest/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:arest/presentation/sign_up_one_screen/sign_up_one_screen.dart';
import 'package:arest/presentation/sign_up_three_screen/sign_up_three_screen.dart';
import 'package:arest/presentation/dashboard_one_container_screen/dashboard_one_container_screen.dart';
import 'package:arest/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:arest/presentation/search_screen/search_screen.dart';
import 'package:arest/presentation/restaurant_search_screen/restaurant_search_screen.dart';
import 'package:arest/presentation/restaurant_details_screen/restaurant_details_screen.dart';
import 'package:arest/presentation/food_order_food_details_screen/food_order_food_details_screen.dart';
import 'package:arest/presentation/food_order_order_details_screen/food_order_order_details_screen.dart';
import 'package:arest/presentation/food_order_complete_screen/food_order_complete_screen.dart';
import 'package:arest/presentation/view_in_arestro_mode_screen/view_in_arestro_mode_screen.dart';
import 'package:arest/presentation/restaurant_map_three_screen/restaurant_map_three_screen.dart';
import 'package:arest/presentation/profile_screen/profile_screen.dart';
import 'package:arest/presentation/table_reservation_selected_tab_container_screen/table_reservation_selected_tab_container_screen.dart';
import 'package:arest/presentation/table_reservation_successful_screen/table_reservation_successful_screen.dart';
import 'package:arest/presentation/restaurant_map_screen/restaurant_map_screen.dart';
import 'package:arest/presentation/restaurant_map_one_screen/restaurant_map_one_screen.dart';
import 'package:arest/presentation/restaurant_map_two_screen/restaurant_map_two_screen.dart';
import 'package:arest/presentation/all_view_food_one_screen/all_view_food_one_screen.dart';
import 'package:arest/presentation/all_view_food_screen/all_view_food_screen.dart';
import 'package:arest/presentation/all_view_restaurant_screen/all_view_restaurant_screen.dart';
import 'package:arest/presentation/payment_tab_container_screen/payment_tab_container_screen.dart';
import 'package:arest/presentation/add_card_one_screen/add_card_one_screen.dart';
import 'package:arest/presentation/order_history_tab_container_screen/order_history_tab_container_screen.dart';
import 'package:arest/presentation/table_reservation_successful_one_screen/table_reservation_successful_one_screen.dart';
import 'package:arest/presentation/add_card_screen/add_card_screen.dart';
import 'package:arest/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String startScreen = '/start_screen';

  static const String logInScreen = '/log_in_screen';

  static const String signUpTwoScreen = '/sign_up_two_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String signUpOneScreen = '/sign_up_one_screen';

  static const String signUpThreeScreen = '/sign_up_three_screen';

  static const String dashboardOnePage = '/dashboard_one_page';

  static const String dashboardOneContainerScreen =
      '/dashboard_one_container_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String searchScreen = '/search_screen';

  static const String restaurantSearchScreen = '/restaurant_search_screen';

  static const String restaurantDetailsScreen = '/restaurant_details_screen';

  static const String foodOrderFoodDetailsScreen =
      '/food_order_food_details_screen';

  static const String foodOrderOrderDetailsScreen =
      '/food_order_order_details_screen';

  static const String foodOrderCompleteScreen = '/food_order_complete_screen';

  static const String viewInArestroModeScreen = '/view_in_arestro_mode_screen';

  static const String restaurantMapThreeScreen = '/restaurant_map_three_screen';

  static const String profileScreen = '/profile_screen';

  static const String tableReservationUnselectedOnePage =
      '/table_reservation_unselected_one_page';

  static const String tableReservationSelectedPage =
      '/table_reservation_selected_page';

  static const String tableReservationSelectedTabContainerScreen =
      '/table_reservation_selected_tab_container_screen';

  static const String tableReservationSuccessfulScreen =
      '/table_reservation_successful_screen';

  static const String restaurantMapScreen = '/restaurant_map_screen';

  static const String restaurantMapOneScreen = '/restaurant_map_one_screen';

  static const String restaurantMapTwoScreen = '/restaurant_map_two_screen';

  static const String allViewFoodOneScreen = '/all_view_food_one_screen';

  static const String allViewFoodScreen = '/all_view_food_screen';

  static const String allViewRestaurantScreen = '/all_view_restaurant_screen';

  static const String paymentPage = '/payment_page';

  static const String paymentTabContainerScreen =
      '/payment_tab_container_screen';

  static const String addCardOneScreen = '/add_card_one_screen';

  static const String ongoingOrderPage = '/ongoing_order_page';

  static const String orderHistoryOnePage = '/order_history_one_page';

  static const String orderHistoryPage = '/order_history_page';

  static const String orderHistoryTabContainerScreen =
      '/order_history_tab_container_screen';

  static const String tableReservationUnselectedPage =
      '/table_reservation_unselected_page';

  static const String tableReservationSelectedOnePage =
      '/table_reservation_selected_one_page';

  static const String tableReservationSuccessfulOneScreen =
      '/table_reservation_successful_one_screen';

  static const String addCardScreen = '/add_card_screen';

  static const String paymentOnePage = '/payment_one_page';

  static const String ongoingOrderOnePage = '/ongoing_order_one_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        startScreen: StartScreen.builder,
        logInScreen: LogInScreen.builder,
        signUpTwoScreen: SignUpTwoScreen.builder,
        signUpScreen: SignUpScreen.builder,
        signUpOneScreen: SignUpOneScreen.builder,
        signUpThreeScreen: SignUpThreeScreen.builder,
        dashboardOneContainerScreen: DashboardOneContainerScreen.builder,
        dashboardScreen: DashboardScreen.builder,
        searchScreen: SearchScreen.builder,
        restaurantSearchScreen: RestaurantSearchScreen.builder,
        restaurantDetailsScreen: RestaurantDetailsScreen.builder,
        foodOrderFoodDetailsScreen: FoodOrderFoodDetailsScreen.builder,
        foodOrderOrderDetailsScreen: FoodOrderOrderDetailsScreen.builder,
        foodOrderCompleteScreen: FoodOrderCompleteScreen.builder,
        viewInArestroModeScreen: ViewInArestroModeScreen.builder,
        restaurantMapThreeScreen: RestaurantMapThreeScreen.builder,
        profileScreen: ProfileScreen.builder,
        tableReservationSelectedTabContainerScreen:
            TableReservationSelectedTabContainerScreen.builder,
        tableReservationSuccessfulScreen:
            TableReservationSuccessfulScreen.builder,
        restaurantMapScreen: RestaurantMapScreen.builder,
        restaurantMapOneScreen: RestaurantMapOneScreen.builder,
        restaurantMapTwoScreen: RestaurantMapTwoScreen.builder,
        allViewFoodOneScreen: AllViewFoodOneScreen.builder,
        allViewFoodScreen: AllViewFoodScreen.builder,
        allViewRestaurantScreen: AllViewRestaurantScreen.builder,
        paymentTabContainerScreen: PaymentTabContainerScreen.builder,
        addCardOneScreen: AddCardOneScreen.builder,
        orderHistoryTabContainerScreen: OrderHistoryTabContainerScreen.builder,
        tableReservationSuccessfulOneScreen:
            TableReservationSuccessfulOneScreen.builder,
        addCardScreen: AddCardScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: StartScreen.builder
      };
}
