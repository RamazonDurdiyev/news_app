import 'package:equatable/equatable.dart';

abstract class HomeState extends Equatable {}

class Initial extends HomeState {
  @override
  List<Object?> get props => [];
}

class ChangeBottomIndexState extends HomeState {
  final State state;

  ChangeBottomIndexState({required this.state});
  @override
  List<Object?> get props => [state];
}

enum State { initial, loading, loaded, error }
