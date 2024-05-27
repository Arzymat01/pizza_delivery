part of 'get_pizza_bloc.dart';

sealed class GetPizzaState extends Equatable {
  const GetPizzaState();

  @override
  List<Object> get props => [];
}

final class GetPizzaInitial extends GetPizzaState {}

final class GetPizzaFailure extends GetPizzaState {}

final class GetPizzaLoading extends GetPizzaState {}

final class GetPizzaSuccees extends GetPizzaState {
  final List<Pizza> pizzas;
  const GetPizzaSuccees(this.pizzas);
  @override
  List<Object> get props => [pizzas];
}
