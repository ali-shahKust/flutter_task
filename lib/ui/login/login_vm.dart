import 'package:flutter/cupertino.dart';
import 'package:flutter_task/data/base/base_vm.dart';
import 'package:flutter_task/data/model/AppModel.dart';
import 'package:flutter_task/data/model/profile.dart';
import 'package:flutter_task/data/repo/login/login_repo.dart';
import 'package:flutter_task/ui/profile/profile_screen.dart';
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
    await  repo.login(email: email, password: password).then((value) async{
      isLoading = false;
      if(value.data['token'] !=null){
        showMessage(context: context, text:"Successfully Logged In" );
       await repo.getData(id: 2.toString()).then((value) {
         print("Status ${value.data['data']}");
         final data =  value.data['data'];
         GetIt.I.get<AppModel>().user =Profile.fromJson(data);
         Navigator.pushNamed(context,ProfileScreen.routeName);


       });
      }
      else {
        showMessage(context: context, text:"Login Failed" );

      }
    });
  }
}