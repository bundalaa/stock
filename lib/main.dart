import 'package:flutter/material.dart';
import 'package:stock/constants/constants.dart';
import 'package:stock/pages/purchaseSummary.dart';
import 'package:stock/pages/sign_in.dart';
import 'package:stock/pages/productionManagerHome.dart';
import 'package:stock/pages/storeKeeperHome.dart';
import 'package:stock/screens/prdManagerfirstScreen.dart';
import 'package:stock/screens/storeKeeperFirstScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (BuildContext context) => Login(),
        login: (BuildContext context) => Login(),
        homePage: (BuildContext context) => HomePage(),
        prdManagerfirstScreen: (BuildContext context) =>
            PrdManagerFirstScreen(),
        storeKeeperFirstScreen: (BuildContext context) =>
            StoreKeeperFirstSreen(),
        storeKeeperHome: (BuildContext context) => StoreHomePage(),
        purchaseSummary: (BuildContext context) => PurchaseSummary(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ), // home: Login(),
    );
  }
}
