

import 'package:study_ui_flutter_tora_2/router/router.dart';

class RouterLinks {
  final String title;
  final String linkRouter;

  RouterLinks({
    required this.title,
    required this.linkRouter,
  });

  static final RouterLinks notFoundOrder = RouterLinks(
    title: 'Start Ordering',
    linkRouter: AppRoutes.order,
  );

  static final RouterLinks notFoundHistory = RouterLinks(
    title: 'Start odering',
    linkRouter:AppRoutes.history,
  );
  static final RouterLinks notUpdateProfile = RouterLinks(
    title: 'Update',
    linkRouter:AppRoutes.profile,
  );

  static final RouterLinks getStarted = RouterLinks(
    title: 'Get Started',
    linkRouter: AppRoutes.home,
  );

  static final RouterLinks startLogin = RouterLinks(
    title: 'Login',
    linkRouter: AppRoutes.home,
  );

  static final RouterLinks signUp = RouterLinks(
    title: 'Sign Up',
    linkRouter: AppRoutes.login,
  );
}