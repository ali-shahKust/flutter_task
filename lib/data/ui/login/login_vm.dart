import 'package:flutter_task/data/base/base_vm.dart';
import 'package:flutter_task/data/repo/login/login_repo.dart';
import 'package:flutter_task/utills/iutills.dart';
import 'package:get_it/get_it.dart';

class LoginVm extends BaseVm {
  final repo = GetIt.I.get<LoginRepo>();
  bool _isLoading = false;


  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  login({required context ,required String email , required String password})async {
    isLoading = true;
    await Future.delayed(Duration(seconds: 2));
    await  repo.login(email: email, password: password).then((value) {
      isLoading = false;
      if(value.data['token'] !=null){
        showMessage(context: context, text:"Success" );
      }
      else {
        showMessage(context: context, text:"Failed" );

      }
    });
  }
}