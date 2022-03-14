import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:xpresshealthdev/UI/user/home/home_screen.dart';
import 'package:xpresshealthdev/UI/user/home/profile_screen.dart';
import 'package:xpresshealthdev/UI/user/sidenav/completed_shift_screen.dart';
import 'package:xpresshealthdev/UI/user/sidenav/notification_screen.dart';

import '../../Constants/app_defaults.dart';
import '../../utils/colors_util.dart';
import '../../utils/utils.dart';

class AppBarCommon extends StatelessWidget implements PreferredSizeWidget {
  GlobalKey<ScaffoldState> scaffoldKey;

  AppBarCommon(GlobalKey<ScaffoldState> key, {required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/images/icon/menu.svg',
        ),
        onPressed: () {
          scaffoldKey.currentState?.openDrawer();
        },
      ),
      bottomOpacity: 0.0,
      elevation: 0.0,
      iconTheme: IconThemeData(
        color: Colors.black,
        //change your color here
      ),
      backgroundColor: HexColor("#ffffff"),
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                'assets/images/icon/logo.svg',
                fit: BoxFit.contain,
                height: 30,
                width: 40,
              )),
        ],
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
              'assets/images/icon/searchicon.svg'), //Image.asset('assets/images/icon/searchicon.svg',width: 20,height: 20,fit: BoxFit.contain,),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60.0);
}
