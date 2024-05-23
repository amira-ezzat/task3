
import 'package:go_router/go_router.dart';
import 'package:task_3/Settings/changeNumber/payment.dart';
import 'package:task_3/Settings/changeNumber/setting.dart';

import '../ui/pages/delivery_report_page.dart';
import '../ui/pages/details_page.dart';
import '../ui/pages/login_page.dart';
import '../ui/pages/menu_page.dart';
import '../ui/pages/payment_page.dart';
import '../ui/pages/profile_page.dart';
import '../ui/pages/qr_page.dart';
import '../ui/pages/successully_page.dart';
import 'constant_go_router.dart';

GoRouter goRouter() {
  return GoRouter(initialLocation: loginPage, routes: [
    GoRoute(
      path: loginPage,
      builder: ((context, state) => const LoginPage()),
    ),
    GoRoute(
      path: menuPage,
      builder: ((context, state) => const MenuPage()),
    ),
    GoRoute(
      path: detailsPage,
      builder: (context, state) => const DetailsPage(),
    ),
    GoRoute(
      path: paymentPage,
      builder: (context, state) => const PaymentPage(),
    ),
    GoRoute(
      path: qrPage,
      builder: (context, state) => const QRPage(),
    ),
    GoRoute(
      path: successPage,
      builder: (context, state) => const SuccessfulyPage(),
    ),
    GoRoute(
      path: profilePage,
      builder: (context, state) => const ProfilePage(),
    ),
     GoRoute(
      path: deliveryPage,
      builder: (context, state) => const DeliveryReportPage(),
    ),
    GoRoute(
      path: settings,
      builder: (context, state) => Settings(),
    ),
    GoRoute(
      path: paymentHistory,
      builder: (context, state) =>  PaymentHistory(),
    ),
  ]);
}
