import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fund_request_ui/screens/fund_request_ui.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: <LocalizationsDelegate<dynamic>>[
        DefaultMaterialLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
      ],
      theme: CupertinoThemeData(
        primaryColor: Colors.blue,
      ),
      home: FundRequestUi(),
    );
  }
}
