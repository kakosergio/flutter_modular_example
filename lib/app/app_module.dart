
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/splash/splash_page.dart';

class AppModule extends Module{
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const SplashPage(),)
  ];
}