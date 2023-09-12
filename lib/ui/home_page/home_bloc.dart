import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(Initial()) {
    on<ChangeBottomIndexEvent>((event, emit) async {
      await _changeBottomIndex(emit, event.selectedIndex);
    });
  }

  int bottomIndex = 0;

  _changeBottomIndex(Emitter<HomeState> emit, int selectedIndex) {
    try {
      emit(ChangeBottomIndexState(state: State.loading));
      bottomIndex = selectedIndex;
      emit(ChangeBottomIndexState(state: State.loaded));
    } catch (e) {
      if (kDebugMode) {
        print("HomeBloc _changeBottomIndex error $e");
      }
      emit(ChangeBottomIndexState(state: State.error));
    }
  }
}
