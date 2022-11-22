import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/category/model/category_controller.dart';

class CategoryPage extends StatefulWidget {
  final String? category;

  const CategoryPage({super.key, required this.category});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categoria'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(widget.category ?? 'Sem argumentos'),
            TextButton(
                onPressed: () {
                  var controller = Modular.get<CategoryController>();
                },
                child: Text('Get Controller'))
          ],
        ),
      ),
    );
  }
}
