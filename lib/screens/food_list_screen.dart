import 'package:flutter/material.dart';
import '../services/food_service.dart';
import '../models/food_model.dart';

class FoodListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Food> foods = FoodService.foods;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lista de Servicios de Comida',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue, 
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.white, 
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: foods.isEmpty
            ? Center(
                child: Text(
                  'No hay servicios de comida agregados.',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              )
            : ListView.builder(
                itemCount: foods.length,
                itemBuilder: (context, index) {
                  final food = foods[index];
                  return Card(
                    color: Colors.blue.shade50,
                    margin: EdgeInsets.symmetric(vertical: 8.0), 
                    elevation: 4.0, 
                    child: ListTile(
                      contentPadding: EdgeInsets.all(16.0), 
                      title: Text(
                        food.category,
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      subtitle: Text(
                        'Cantidad: ${food.quantity}',
                        style: TextStyle(color: Colors.black54, fontSize: 16),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}