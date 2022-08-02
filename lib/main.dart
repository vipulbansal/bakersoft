import 'package:bakersoft/providers/cart_provider.dart';
import 'package:bakersoft/providers/products_provider.dart';
import 'package:bakersoft/screens/cart_screen.dart';
import 'package:bakersoft/screens/product_detail_screen.dart';
import 'package:bakersoft/screens/products_overview_screen.dart';
import 'package:bakersoft/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const BakerSoftApp());
}

class BakerSoftApp extends StatelessWidget {
  const BakerSoftApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext myContext) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProductsProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => CartProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "BakerSoft",
        theme: Styles.themeData(myContext),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
        },
      ),
    );
  }
}
