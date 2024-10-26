import 'package:deeplink/page_four_widget.dart';
import 'package:deeplink/page_one_widget.dart';
import 'package:deeplink/page_three_widget.dart';
import 'package:deeplink/page_two_widget.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const PageOneWidget(),
  ),
  GoRoute(
    path: "/pageTwo",
    name: "pageTwo",
    builder: (context, state) => const PageTwoWidget(),
  ),
  GoRoute(
    path: "/pageThree/:type",
    name: "pageThree",
    builder: (context, state) {
      final type = state.pathParameters['type'].toString();
      return PageThreeWidget(deeplinkType: type);
    },
  ),
  GoRoute(
    path: "/pageFour",
    name: "pageFour",
    builder: (context, state) => const PageFourWidget(),
  )
]);
