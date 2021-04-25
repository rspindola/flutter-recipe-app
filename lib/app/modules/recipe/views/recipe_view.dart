import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/recipe_controller.dart';

class RecipeView extends GetView<RecipeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RecipeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RecipeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
