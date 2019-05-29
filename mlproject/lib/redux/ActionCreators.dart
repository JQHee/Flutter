import 'dart:async';
import 'AppState.dart';
import 'Actions.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

ThunkAction<AppState> login(username, password, faculty, persistentSession) {
  return (Store<AppState> store) async {
    /*
    try {
      store.dispatch(new SetLoginStatusAction(RequestStatus.BUSY));
      final Session session = await NetworkRouter.login(username, password, faculty, persistentSession);
      store.dispatch(new SaveLoginDataAction(session));
      if (session.authenticated){
        if (persistentSession)
          AppSharedPreferences.savePersistentUserInfo(username, password);
        await loadRemoteUserInfoToState(store);
        store.dispatch(new SetLoginStatusAction(RequestStatus.SUCCESSFUL));
      } else {
        store.dispatch(new SetLoginStatusAction(RequestStatus.FAILED));
      }
    } catch (e) {
      store.dispatch(new SetLoginStatusAction(RequestStatus.FAILED));
    }
    */
  };
}

/* 有分页
ThunkAction<AppState> getUserExams(Completer<Null> action) {
  return (Store<AppState> store) async {
    try {
      //need to get student course here
      store.dispatch(new SetExamsStatusAction(RequestStatus.BUSY));

      List<Exam> courseExams = await parseExams(
          await NetworkRouter.getWithCookies(NetworkRouter.getBaseUrlFromSession(store.state.content['session']) + "exa_geral.mapa_de_exames?p_curso_id=742",
          {}, store.state.content['session'].cookies)
      );

      List<CourseUnit> userUcs = store.state.content['currUcs'];
      List<Exam> exams = new List<Exam>();
      for (Exam courseExam in courseExams) {
        for (CourseUnit uc in userUcs) {
          if (!courseExam.examType.contains(
              "Exames ao abrigo de estatutos especiais - Port.Est.Especiais") &&
              courseExam.subject == uc.abbreviation) {
            exams.add(courseExam);
            break;
          }

        }
      }

      // Updates local database according to the information fetched -- Exams
      Tuple2<String, String> userPersistentInfo = await AppSharedPreferences.getPersistentUserInfo();
      if(userPersistentInfo.item1 != "" && userPersistentInfo.item2 != ""){
        AppExamsDatabase db = await AppExamsDatabase();
        db.saveNewExams(exams);
      }
      store.dispatch(new SetExamsStatusAction(RequestStatus.SUCCESSFUL));
      store.dispatch(new SetExamsAction(exams));
      
    } catch (e) {
      print("Failed to get Exams");
      store.dispatch(new SetExamsStatusAction(RequestStatus.FAILED));
    }

    action.complete();
  };
}
*/