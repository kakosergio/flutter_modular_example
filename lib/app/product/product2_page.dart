import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Product2Page extends StatelessWidget {
  final String? nome;
  const Product2Page({Key? key, required this.nome}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produto'),
      ),
      body: Column(
        children: [
          Text(Modular.args.queryParams['nome'] ?? 'Não encontrado'),
          Text(nome ?? 'nome não enviado'),
        ],
      ),
    );
  }
}
