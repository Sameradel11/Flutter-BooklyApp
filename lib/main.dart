import 'package:bookly/Features/home/presentation/view_model/cubit/book_cubit.dart';
import 'package:bookly/Features/home/presentation/view_model/new_books/new_books_cubit.dart';
import 'package:bookly/const.dart';
import 'package:bookly/core/utils/app_route.dart';
import 'package:bookly/core/utils/bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  Bloc.observer = Observer();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeaturedBookCubit()
              ..fetchFeaturedBooks(subject: "Programming")),
        BlocProvider(
            create: (context) =>
                NewBooksCubit()..fetchNewBooks(subject: "programming"))
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        theme: ThemeData(brightness: Brightness.dark).copyWith(
            scaffoldBackgroundColor: KprimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
