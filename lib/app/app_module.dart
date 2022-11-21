
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/product/product_module.dart';
import 'package:flutter_modular_example/app/splash/splash_page.dart';

import 'category/category_module.dart';

class AppModule extends Module{
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const SplashPage(),),
    ModuleRoute('/category' , module: CategoryModule()),
    ModuleRoute('/product', module: ProductModule())
  ];
}