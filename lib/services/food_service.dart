import '../models/food_model.dart';

class FoodService {
  // Lista estática privada para almacenar los pedidos de comida
  static final List<Food> _foods = [];

  // Método para obtener la lista de pedidos de comida
  static List<Food> get foods => List.unmodifiable(_foods);

  // Método para agregar un nuevo pedido de comida
  static void addFood(Food food) {
    _foods.add(food);
  }
}