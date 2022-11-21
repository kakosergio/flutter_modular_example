import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash Page'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () => Modular.to.pushNamed('/category/',
                    arguments: 'Subi a escada de São Paulo'),
                child: const Text('Categoria')),
            TextButton(
                onPressed: () => Modular.to.pushNamed('/product/',
                    arguments: 'Subi a escada de São Paulo'),
                child: const Text('Produtos'))
          ],
        ),
      ),
    );
  }
}
