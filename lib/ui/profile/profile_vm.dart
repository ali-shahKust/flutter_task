import 'package:flutter_task/data/base/base_vm.dart';
import 'package:flutter_task/data/model/AppModel.dart';
import 'package:flutter_task/data/model/profile.dart';
import 'package:get_it/get_it.dart';

class ProfileVm extends BaseVm {
  final user = GetIt.I.get<AppModel>().user;
}