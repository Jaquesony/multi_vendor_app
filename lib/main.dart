import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:multiple_vendor/provider/cart_provider.dart';
import 'package:multiple_vendor/provider/product_provider.dart';
import 'package:multiple_vendor/vendor/views/auth/screens/main_vendor_screen.dart';
import 'package:multiple_vendor/vendor/views/auth/vendor_auth.dart';
import 'package:multiple_vendor/vendor/views/auth/vendor_register_screen.dart';
import 'package:multiple_vendor/views/buyers/auth/login_screen.dart';
import 'package:multiple_vendor/views/buyers/auth/register_screen.dart';
import 'package:multiple_vendor/views/buyers/main_screen.dart';

import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) {
          return ProductProvider();
        }),
          ChangeNotifierProvider(create: (_) {
          return CartProvider();
        })
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Brand-Bold',
      ),
      home: MainScreen(),
      builder: EasyLoading.init(),
    );
  }
}
