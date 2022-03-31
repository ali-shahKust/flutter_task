import 'package:flutter/material.dart';
import 'package:flutter_task/ui/profile/profile_vm.dart';
import 'package:flutter_task/utills/iutills.dart';
import 'package:flutter_task/widgets/primary_text.dart';
import 'package:provider/provider.dart';

import '../../../widgets/background_widget.dart';

class ProfileScreen extends StatefulWidget {
  static const String routeName = 'profile';

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileVm>(builder: (context, vm, _) =>  Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            BackgroundWidget(),

            Positioned(
              top: 50,
              left: 25,
              right: 25,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 35),
                                child: Material(
                  borderRadius: BorderRadius.circular(22),
                  child: Container(
                    height: getScreenHeight(context)-300,
                    width: getScreenWidth(context),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 35.0,horizontal: 22),
                      child: Column(
                        children: [
                          SizedBox(height: 70,),
                          customWidget(Icons.person,vm.user.first_name+ " " +vm.user.last_name),
                          Divider(thickness: 1.2,),
                          SizedBox(height: 20,),
                          customWidget(Icons.email,vm.user.email),
                          Divider(thickness: 1.2,),


                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 50,
              right: 50,
              child: CircleAvatar(
                backgroundImage: NetworkImage(vm.user.image),
                radius: 60,
              ),
            ),
          ],
        ),
      ),
    ));
  }

  customWidget(icon,title){
    return Row(
      children: [
        Icon(icon),
        SizedBox(width: 15,),
        PrimaryText(title,color: Colors.black54,fontWeight: FontWeight.w600,fontSize: 16,),
      ],
    );
  }
}
