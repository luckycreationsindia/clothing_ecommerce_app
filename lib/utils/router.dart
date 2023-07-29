import 'package:clothing_ecommerce_app/screens/home.dart';
import 'package:clothing_ecommerce_app/screens/login.dart';
import 'package:clothing_ecommerce_app/screens/onboarding/boarding_one.dart';
import 'package:clothing_ecommerce_app/screens/onboarding/boarding_three.dart';
import 'package:clothing_ecommerce_app/screens/onboarding/boarding_two.dart';
import 'package:clothing_ecommerce_app/screens/products.dart';
import 'package:clothing_ecommerce_app/screens/registration.dart';
import 'package:clothing_ecommerce_app/screens/splash.dart';
import 'package:clothing_ecommerce_app/utils/constants.dart';
import 'package:clothing_ecommerce_app/widgets/main_wrapper.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      name: RouteConstants.splashRouteName,
      path: RouteConstants.splashRoutePath,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      name: RouteConstants.onboardingOneRouteName,
      path: RouteConstants.onboardingOneRoutePath,
      builder: (context, state) => const BoardingOne(),
    ),
    GoRoute(
      name: RouteConstants.onboardingTwoRouteName,
      path: RouteConstants.onboardingTwoRoutePath,
      builder: (context, state) => const BoardingTwo(),
    ),
    GoRoute(
      name: RouteConstants.onboardingThreeRouteName,
      path: RouteConstants.onboardingThreeRoutePath,
      builder: (context, state) => const BoardingThree(),
    ),
    GoRoute(
      name: RouteConstants.homeRouteName,
      path: RouteConstants.homeRoutePath,
      builder: (context, state) => const MainWrapper(child: HomeScreen()),
    ),
    GoRoute(
      name: RouteConstants.productsRouteName,
      path: RouteConstants.productsRoutePath,
      builder: (context, state) => const MainWrapper(child: ProductsScreen()),
    ),
    GoRoute(
      name: RouteConstants.loginRouteName,
      path: RouteConstants.loginRoutePath,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      name: RouteConstants.registrationRouteName,
      path: RouteConstants.registrationRoutePath,
      builder: (context, state) => const RegistrationScreen(),
    ),
  ],
);
