import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_task/data/base/base_vm.dart';

import '../../../utills/theme_constants.dart';

class SplashVm extends BaseVm {
  Widget spinkit = SpinKitDualRing(
    color: primaryColor,
    size:230,
    lineWidth: 0.5,
    duration: Duration(seconds: 1),
  );
}