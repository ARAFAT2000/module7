import 'package:flutter/material.dart';
import 'package:module6/assaignment7/product/product.dart';

import 'package:module6/listbuildernavi/savescreen/nav1.dart';
import 'package:module6/listbuildernavi/userscreen/userscreen.dart';

import 'assaignment7/cartpage/cartpage.dart';
import 'assaignment7/productpage/productpage.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductScreen(products: productlist),
    );
  }
}
