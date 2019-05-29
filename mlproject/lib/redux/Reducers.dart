import 'AppState.dart';
import 'Actions.dart';


AppState appReducers(AppState state, dynamic action) {
  if (action is SaveLoginDataAction) {
    return login(state, action);
  } 
  return state;
}

AppState login(AppState state, SaveLoginDataAction action) {
  print('setting state: ' + action.session.toString());
  return state.cloneAndUpdateValue('session', action.session);
}