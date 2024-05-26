import 'package:pizza_repository/src/models/pizza.dart';

abstract class PizzaRepo {
  Future<List<Pizza>> getPizzas();
}
