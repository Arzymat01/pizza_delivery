import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'get_bloc_event.dart';
part 'get_bloc_state.dart';

class GetBlocBloc extends Bloc<GetBlocEvent, GetBlocState> {
  GetBlocBloc() : super(GetBlocInitial()) {
    on<GetBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
