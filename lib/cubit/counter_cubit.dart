import 'counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterBIncrementState());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void teamPointsIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterAIncrementState());
    } else {
      teamBPoints += buttonNumber;
      emit(CounterBIncrementState());
    }
  }
  void resetPoints(){
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterAIncrementState());
    emit(CounterBIncrementState());
  }
}
