import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:sizer/sizer.dart';
import 'package:xpresshealthdev/UI/splash/user_or_manager.dart';
import 'package:xpresshealthdev/UI/user/sidenav/completed_shift_screen.dart';
import 'package:xpresshealthdev/UI/user/sidenav/notification_screen.dart';

import '../../Constants/app_defaults.dart';
import '../../utils/utils.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        stops: [
          0.3,
          0.6,
          0.9,
          0.12,
        ],
        colors: [
          HexColor("#04b654"),
          HexColor("#049e95"),
          HexColor("#049e95"),
          HexColor("#058dbf"),
        ],
      )),
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      SizedBox(height: screenHeight(context, dividedBy: 16)),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.12,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: AspectRatio(
                                aspectRatio: 1 / 1,
                                child: Image.network(
                                  'https://i.imgur.com/PJpPD6S.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: AppDefaults.margin),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Sanjay Abraham',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: "SFProMedium",
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Staff Nurses',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: "S",
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Emp No:6950',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: "S",
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // Actions
                    ],
                  ),
                ),
              ],
            ),
          ),
          // ListTile(
          //   title: const Text(
          //     'Home',
          //     style: TextStyle(color: Colors.white),
          //   ),
          //   leading: SvgPicture.asset(
          //     'assets/images/icon/home.svg',
          //     color: Colors.white,
          //   ),
          //   onTap: () {
          //     // Update the state of the app.
          //     // ...
          //     Navigator.pop(context);
          //     pushNewScreen(
          //       context,
          //       screen: HomeScreen(),
          //       withNavBar: true, // OPTIONAL VALUE. True by default.
          //       pageTransitionAnimation: PageTransitionAnimation.cupertino,
          //     );
          //   },
          // ),
          // ListTile(
          //   title: const Text(
          //     'My Profile',
          //     style: TextStyle(color: Colors.white),
          //   ),
          //   leading: SvgPicture.asset(
          //     'assets/images/icon/user.svg',
          //     color: Colors.white,
          //   ),
          //   onTap: () {
          //     // Update the state of the app.
          //     // ...
          //     Navigator.pop(context);
          //
          //     pushNewScreen(
          //       context,
          //       screen: ProfileScreen(),
          //       withNavBar: true, // OPTIONAL VALUE. True by default.
          //       pageTransitionAnimation: PageTransitionAnimation.cupertino,
          //     );
          //   },
          // ),
          ListTile(
            title: const Text(
              'Submit Timesheet',
              style: TextStyle(color: Colors.white),
            ),
            leading: Container(
              width: 5.w,
              height: 5.w,
              child: SvgPicture.asset(
                'assets/images/icon/availability.svg',
                color: Colors.white,
              ),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);

              //
              // pushNewScreen(
              //   context,
              //   screen: ProfileScreen(),
              //   withNavBar: true, // OPTIONAL VALUE. True by default.
              //   pageTransitionAnimation: PageTransitionAnimation.cupertino,
              // );
            },
          ),
          ListTile(
            title: const Text(
              'Notification',
              style: TextStyle(color: Colors.white),
            ),
            leading: Container(
              width: 5.w,
              height: 5.w,
              child: SvgPicture.asset(
                'assets/images/icon/notification.svg',
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              pushNewScreen(
                context,
                screen: NotificationScreen(),
                withNavBar: true, // OPTIONAL VALUE. True by default.
                pageTransitionAnimation: PageTransitionAnimation.cupertino,
              );
            },
          ),
          ListTile(
            title: const Text(
              'Completed Shifts',
              style: TextStyle(color: Colors.white),
            ),
            leading: Container(
              width: 5.w,
              height: 5.w,
              child: SvgPicture.asset(
                'assets/images/icon/shift.svg',
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              pushNewScreen(
                context,
                screen: CompletedShiftScreen(),
                withNavBar: true, // OPTIONAL VALUE. True by default.
                pageTransitionAnimation: PageTransitionAnimation.cupertino,
              );

              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text(
              'FAQs',
              style: TextStyle(color: Colors.white),
            ),
            leading: Container(
              width: 5.w,
              height: 5.w,
              child: SvgPicture.asset(
                'assets/images/icon/email.svg',
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text(
              'Contact Us',
              style: TextStyle(color: Colors.white),
            ),
            leading: Container(
              width: 5.w,
              height: 5.w,
              child: SvgPicture.asset(
                'assets/images/icon/passport.svg',
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text(
              'Log Out',
              style: TextStyle(color: Colors.white),
            ),
            leading: Container(
              width: 5.w,
              height: 5.w,
              child: SvgPicture.asset(
                'assets/images/icon/email.svg',
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.pop(context);

              Navigator.pushAndRemoveUntil<dynamic>(
                context,
                MaterialPageRoute<dynamic>(
                  builder: (BuildContext context) => UserOrManager(),
                ),
                (route) =>
                    false, //if you want to disable back feature set to false
              );

              //
              // pushNewScreen(
              //   context,
              //   screen: UserOrManager(),
              //   withNavBar: false, // OPTIONAL VALUE. True by default.
              //   pageTransitionAnimation: PageTransitionAnimation.cupertino,
              // );
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}
