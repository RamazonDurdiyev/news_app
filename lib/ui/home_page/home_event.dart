import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable {}

class ChangeBottomIndexEvent extends HomeEvent {
  final int selectedIndex;

  ChangeBottomIndexEvent({required this.selectedIndex});
  @override
  List<Object?> get props => [];
}