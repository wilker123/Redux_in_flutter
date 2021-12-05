import 'package:redux_in_flutter/redux/store.dart';

enum AppAction { increment, decrement }

class AppState {
  final int value;

  AppState({this.value = 0});

  operator +(int newvalue) {
    return AppState(value: value + newvalue);
  }

  operator -(int newvalue) {
    return AppState(value: value + newvalue);
  }
}

AppState _reducer(AppState state, AppAction action) {
  if (action == AppAction.increment) {
    //return AppState(value: state.value + 1);
    return state + 1;
  } else {
    return state - 1;
  }
}

final appStore = Store<AppAction, AppState>(
  initialState: AppState(),
  reducer: _reducer,
);
