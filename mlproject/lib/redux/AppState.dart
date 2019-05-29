// enum should be placed somewhere else?
enum RequestStatus {
  NONE, BUSY, FAILED, SUCCESSFUL
}

// 参考：https://github.com/NIAEFEUP/project-schrodinger/tree/develop/app_feup/lib/redux

class AppState {

  Map content = Map<String, dynamic>();

  Map getInitialContent() {
    return {
      "schedule": [],
      "exams": [],
      "scheduleStatus": RequestStatus.NONE,
      "examsStatus": RequestStatus.NONE,
      "selected_page": "Área Pessoal",
    };
  }

  AppState(Map content) {
    if (content != null) {
      this.content = content;
    } else {
      this.content = this.getInitialContent();
    }
  }

  AppState cloneAndUpdateValue(key, value){
    return new AppState(
        Map.from(this.content)
          ..[key] = value);
  }

}