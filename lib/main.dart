import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// import 'blocs/language/language_bloc.dart';
import 'config/app_config.dart';
import 'config/bloc_provider_setup.dart';
import 'config/router.dart' as router;
import 'ui/utils/appLocalizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return MultiRepositoryProvider(
    //     providers: repositoryProviders,
    //     child: MultiBlocProvider(
    //         providers: blocProviders,
    //         child: BlocBuilder<LanguageBloc, LanguageState>(
    //             builder: (context, languageState) {
    return MaterialApp(
      // localizationsDelegates: [
      //   AppLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      // ],
      // locale: languageState.locale,
      // supportedLocales: [
      //   Locale('en', 'US'), // English
      //   Locale('fr', ''), // French
      // ],
      title: AppConfig.appName,
      theme: ThemeData.light().copyWith(accentColor: Color(0xFF83b23c)),
      // home: TestAnimation(),
      onGenerateRoute: router.Router.generateRoute,
      initialRoute: router.initialRoute,
      debugShowCheckedModeBanner: false,
    );
    // }))
    // );
  }
}
