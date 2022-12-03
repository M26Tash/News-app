// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:news_app/domain/provider/local_provider/local_provider.dart';
import 'package:news_app/domain/provider/news_provider.dart';
import 'package:news_app/generated/l10n.dart';
import 'package:news_app/l10n/l10n.dart';
import 'package:news_app/ui/pages/home_page/home_page.dart';
import 'package:provider/provider.dart';

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => NewsProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => LocalProvider(),
        ),
      ],
      child: AppContent(),
    );
  }
}

class AppContent extends StatelessWidget {
  const AppContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<LocalProvider>(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        systemNavigationBarColor: Color(0xff003366),
      ),
      child: MaterialApp(
        locale: model.locale,
        // const Locale('en'),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: l10n.all,
        theme: ThemeData(useMaterial3: true),
        home: const HomePage(),
      ),
    );
  }
}
