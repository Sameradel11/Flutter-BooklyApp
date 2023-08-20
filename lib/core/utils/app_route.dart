import 'package:bookly/Features/Splash/presentation/views/splash_view.dart';
import 'package:bookly/Features/home/presentation/views/homeView/home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const KHomeView = "/homeview";
  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(path: '/homeview', builder: (context, state) => const HomeView()),
  ]);
}
