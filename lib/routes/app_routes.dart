import 'package:samuel_s_application3/presentation/splash_screen/splash_screen.dart';
import 'package:samuel_s_application3/presentation/splash_screen/binding/splash_binding.dart';
import 'package:samuel_s_application3/presentation/login_screen/login_screen.dart';
import 'package:samuel_s_application3/presentation/login_screen/binding/login_binding.dart';
import 'package:samuel_s_application3/presentation/log_in_screen/log_in_screen.dart';
import 'package:samuel_s_application3/presentation/log_in_screen/binding/log_in_binding.dart';
import 'package:samuel_s_application3/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:samuel_s_application3/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:samuel_s_application3/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:samuel_s_application3/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:samuel_s_application3/presentation/page_view_screen/page_view_screen.dart';
import 'package:samuel_s_application3/presentation/page_view_screen/binding/page_view_binding.dart';
import 'package:samuel_s_application3/presentation/detailed_profile_screen/detailed_profile_screen.dart';
import 'package:samuel_s_application3/presentation/detailed_profile_screen/binding/detailed_profile_binding.dart';
import 'package:samuel_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:samuel_s_application3/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String logInScreen = '/log_in_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String trendingPostsPage = '/trending_posts_page';

  static const String pageViewScreen = '/page_view_screen';

  static const String messagesPage = '/messages_page';

  static const String profilePage = '/profile_page';

  static const String detailedProfileScreen = '/detailed_profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: logInScreen,
      page: () => LogInScreen(),
      bindings: [
        LogInBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: pageViewScreen,
      page: () => PageViewScreen(),
      bindings: [
        PageViewBinding(),
      ],
    ),
    GetPage(
      name: detailedProfileScreen,
      page: () => DetailedProfileScreen(),
      bindings: [
        DetailedProfileBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
