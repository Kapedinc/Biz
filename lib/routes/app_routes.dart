import 'package:vashon_s_application20/presentation/dashboard_container_screen/dashboard_container_screen.dart';
import 'package:vashon_s_application20/presentation/dashboard_container_screen/binding/dashboard_container_binding.dart';
import 'package:vashon_s_application20/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:vashon_s_application20/presentation/onboarding_one_screen/binding/onboarding_one_binding.dart';
import 'package:vashon_s_application20/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:vashon_s_application20/presentation/onboarding_two_screen/binding/onboarding_two_binding.dart';
import 'package:vashon_s_application20/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:vashon_s_application20/presentation/onboarding_three_screen/binding/onboarding_three_binding.dart';
import 'package:vashon_s_application20/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:vashon_s_application20/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:vashon_s_application20/presentation/login_screen/login_screen.dart';
import 'package:vashon_s_application20/presentation/login_screen/binding/login_binding.dart';
import 'package:vashon_s_application20/presentation/transactions_screen/transactions_screen.dart';
import 'package:vashon_s_application20/presentation/transactions_screen/binding/transactions_binding.dart';
import 'package:vashon_s_application20/presentation/settings_screen/settings_screen.dart';
import 'package:vashon_s_application20/presentation/settings_screen/binding/settings_binding.dart';
import 'package:vashon_s_application20/presentation/empty_screen/empty_screen.dart';
import 'package:vashon_s_application20/presentation/empty_screen/binding/empty_binding.dart';
import 'package:vashon_s_application20/presentation/loading_screen/loading_screen.dart';
import 'package:vashon_s_application20/presentation/loading_screen/binding/loading_binding.dart';
import 'package:vashon_s_application20/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:vashon_s_application20/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String dashboardPage = '/dashboard_page';

  static const String dashboardContainerScreen = '/dashboard_container_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String loginScreen = '/login_screen';

  static const String transactionsScreen = '/transactions_screen';

  static const String paymentsPage = '/payments_page';

  static const String cardsPage = '/cards_page';

  static const String settingsScreen = '/settings_screen';

  static const String emptyScreen = '/empty_screen';

  static const String loadingScreen = '/loading_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: dashboardContainerScreen,
      page: () => DashboardContainerScreen(),
      bindings: [
        DashboardContainerBinding(),
      ],
    ),
    GetPage(
      name: onboardingOneScreen,
      page: () => OnboardingOneScreen(),
      bindings: [
        OnboardingOneBinding(),
      ],
    ),
    GetPage(
      name: onboardingTwoScreen,
      page: () => OnboardingTwoScreen(),
      bindings: [
        OnboardingTwoBinding(),
      ],
    ),
    GetPage(
      name: onboardingThreeScreen,
      page: () => OnboardingThreeScreen(),
      bindings: [
        OnboardingThreeBinding(),
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
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: transactionsScreen,
      page: () => TransactionsScreen(),
      bindings: [
        TransactionsBinding(),
      ],
    ),
    GetPage(
      name: settingsScreen,
      page: () => SettingsScreen(),
      bindings: [
        SettingsBinding(),
      ],
    ),
    GetPage(
      name: emptyScreen,
      page: () => EmptyScreen(),
      bindings: [
        EmptyBinding(),
      ],
    ),
    GetPage(
      name: loadingScreen,
      page: () => LoadingScreen(),
      bindings: [
        LoadingBinding(),
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
      page: () => DashboardContainerScreen(),
      bindings: [
        DashboardContainerBinding(),
      ],
    )
  ];
}
