import 'package:flutter_task/data/model/profile.dart';

import '../base/base_vm.dart';

class AppModel extends BaseVm  {
  bool _isLoading = false;
  late Profile _user;

  Profile get user => _user;


  set user(Profile value) {
    _user = value;
  }

  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
  void notifyAppListeners() {
    notifyListeners();
  }

}