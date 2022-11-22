import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/product/product2_page.dart';
import 'package:flutter_modular_example/app/product/product_page.dart';

class ProductModule extends Module {

   @override
   final List<Bind> binds = [];

   @override
   final List<ModularRoute> routes = [
    ChildRoute('/:nome', child: (context, args) => ProductPage(nome: Modular.args.params['nome'])),
    ChildRoute('/xyz', child: (context, args) => Product2Page(nome: args.queryParams['nome'])),
   ];

}