part of 'get_bloc_bloc.dart';

sealed class GetBlocState extends Equatable {
  const GetBlocState();
  
  @override
  List<Object> get props => [];
}

final class GetBlocInitial extends GetBlocState {}
