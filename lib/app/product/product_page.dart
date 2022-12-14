import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProductPage extends StatelessWidget {
  final String? nome;
  const ProductPage({Key? key, required this.nome}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produto'),
      ),
      body: Column(
        children: [
          Text(Modular.args.params['nome']),
          Text(nome ?? 'nome não enviado'),
        ],
      ),
    );
  }
}
