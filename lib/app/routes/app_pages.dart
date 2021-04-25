import 'package:get/get.dart';

import 'package:recipes/app/modules/auth/bindings/auth_binding.dart';
import 'package:recipes/app/modules/auth/views/auth_view.dart';
import 'package:recipes/app/modules/auth/views/login_view.dart';
import 'package:recipes/app/modules/auth/views/registar_view.dart';
import 'package:recipes/app/modules/category/bindings/category_binding.dart';
import 'package:recipes/app/modules/category/views/category_view.dart';
import 'package:recipes/app/modules/home/bindings/home_binding.dart';
import 'package:recipes/app/modules/home/views/home_view.dart';
import 'package:recipes/app/modules/recipe/bindings/recipe_binding.dart';
import 'package:recipes/app/modules/recipe/views/recipe_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.AUTH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.AUTH,
      page: () => AuthView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.RECIPE,
      page: () => RecipeView(),
      binding: RecipeBinding(),
    ),
    GetPage(
      name: _Paths.CATEGORY,
      page: () => CategoryView(),
      binding: CategoryBinding(),
    ),
  ];
}
