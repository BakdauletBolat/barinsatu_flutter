import 'package:barinsatu/ads/bloc/filter_ad_bloc.dart';
import 'package:barinsatu/ads/bloc/user_ad_bloc.dart';
import 'package:barinsatu/story/bloc/preload_bloc.dart';
import 'package:barinsatu/story/repositories/story_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'ads/bloc/ad_bloc.dart';
import 'ads/repositories/ad_repo.dart';
import 'authentication/bloc/auth_bloc.dart';
import 'authentication/repositories/auth_repo.dart';
import 'pages/HomePage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final AdRepo adRepo = AdRepo();
  final AuthRepo authRepo = AuthRepo();
  final StoryRepo storyRepo = StoryRepo();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AdBloc>(
          create: (context) => AdBloc(adRepo: adRepo),
        ),
        BlocProvider<UserAdBloc>(
          create: (context) => UserAdBloc(adRepo: adRepo),
        ),
        BlocProvider<FilterAdBloc>(
          create: (context) => FilterAdBloc(adRepo: adRepo),
        ),
        BlocProvider<PreloadBloc>(
          create: (context) => PreloadBloc(storyRepo: storyRepo)
            ..add(const PreloadEvent.fetch()),
        ),
        BlocProvider<AuthBloc>(
          create: (BuildContext context) => AuthBloc(authRepo: authRepo),
        ),
      ],
      child: MaterialApp(
        title: 'Barinsatu',
        home: const HomePage(),
        theme: ThemeData(
            primaryColor: const Color.fromRGBO(76, 136, 138, 1),
            textTheme: GoogleFonts.openSansTextTheme(
              Theme.of(context).textTheme,
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9))),
            ),
            brightness: Brightness.light,
            colorScheme: const ColorScheme.light(
                primary: Color.fromRGBO(76, 136, 138, 1))),
      ),
    );
  }
}
