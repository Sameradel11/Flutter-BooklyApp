// ignore_for_file: constant_identifier_names

import 'package:bookly/Features/Splash/presentation/views/splash_view.dart';
import 'package:bookly/Features/home/presentation/views/homeView/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../Features/home/presentation/views/book_details_view/book_details.dart';

abstract class AppRouter {
  static const KHomeView = "/homeview";
  static const KDetailsView = '/details';
  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(path: '/homeview', builder: (context, state) => const HomeView()),
    GoRoute(
        path: "/details", builder: ((context, state) => const BookDetails()))
  ]);
}
