import 'package:get/get.dart';
import 'package:idatos_celulares/screens/home/details_screen.dart';
import 'package:idatos_celulares/screens/home/index_screen.dart';
import 'package:idatos_celulares/screens/home/models_screen.dart';
import 'package:idatos_celulares/screens/home/product_listing_screen.dart';
import 'package:idatos_celulares/screens/welcome/welcome_screen.dart';

class RoutesApp {
  static final routes = [
    //INIT PAGE
    GetPage(name: '/welcome_screen', page: () => WelcomeScreen(), transition: Transition.cupertino),
    GetPage(name: '/index_screen', page: () => IndexScreen(), transition: Transition.cupertino),
    GetPage(name: '/models_screen', page: () => ModelsScreen(), transition: Transition.cupertino),
    GetPage(name: '/details_screen', page: () => DetailScreen(), transition: Transition.cupertino),
    GetPage(name: '/product_listing_screen', page: () => ProductListingScreen(), transition: Transition.cupertino),
  ];
}
