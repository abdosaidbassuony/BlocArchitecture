import 'package:flutter/material.dart';

import 'package:fanoos/utils/theme/app_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fanoos/ui/screen/home_screen.dart';

import 'generated/l10n.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [],
      child: BlocBuilder(

        /// bloc builder for handle change language state
        /// should create LanguageBloc first then handle change language state
        builder: (BuildContext context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: AppTheme().getTheme(isLight: true),
            localizationsDelegates: [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            routes: {},
            supportedLocales: S.delegate.supportedLocales,
            home: MainPage(title: 'Flutter Demo Home Page'),
          );
        },
      ),
    );
  }
}
