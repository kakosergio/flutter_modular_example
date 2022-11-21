import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/product/product_page.dart';

class ProductModule extends Module {

   @override
   final List<Bind> binds = [];

   @override
   final List<ModularRoute> routes = [
    ChildRoute('/', child: (context, args) => const ProductPage()),
   ];

}