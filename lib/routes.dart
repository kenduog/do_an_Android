import 'package:flutter/widgets.dart';
import 'package:saigon_store/screens/cart/cart_screen.dart';
import 'package:saigon_store/screens/complete_profile/complete_profile_screen.dart';
import 'package:saigon_store/screens/details/details_screen.dart';
import 'package:saigon_store/screens/favourite/favourite_screen.dart';
import 'package:saigon_store/screens/forgot_password/forgot_password_screen.dart';
import 'package:saigon_store/screens/home/home_screen.dart';
import 'package:saigon_store/screens/login_success/login_success_screen.dart';
import 'package:saigon_store/screens/otp/otp_screen.dart';
import 'package:saigon_store/screens/profile/profile_screen.dart';
import 'package:saigon_store/screens/sign_in/sign_in_screen.dart';
import 'package:saigon_store/screens/splash/splash_screen.dart';
import 'package:saigon_store/screens/my_profile/my_profile_screen.dart';
import 'package:saigon_store/screens/change_profile_success/change_profile_success_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';
import 'screens/history_cart/history_cart_screen.dart';
import 'screens/setting/setting_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  FavouriteScreen.routeName: (context) => FavouriteScreen(),
  MyProfileScreen.routeName: (context) => MyProfileScreen(),
  ChangeProfileSuccessScreen.routeName: (context) => ChangeProfileSuccessScreen(),
  History_Cart.routeName: (context) => History_Cart(),
  SettingScreen.routeName: (context) => SettingScreen(),
};
