import 'package:flutter/material.dart';
import 'package:furniture_app/Screens/home/home.dart';
import 'package:furniture_app/Screens/profile/profile.dart';
import 'package:furniture_app/Screens/search/search.dart';
import 'package:furniture_app/Screens/settings/settings.dart';

import '../../constants.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  // Properties & Variables needed

  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    HomeScreen(),
    Search(),
    Settings(),
    Profile(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomeScreen(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kDarkBlue,
        child: Image.asset(
          "assets/icons/cart.png",
          width: 25,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            HomeScreen(); // if user taps on this dashboard tab will be active
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.home,
                          color: currentTab == 0 ? kDarkBlue : Colors.grey[400],
                          size: 30,
                        ),
                        Icon(
                          Icons.fiber_manual_record,
                          color:
                              currentTab == 0 ? kDarkBlue : Colors.transparent,
                          size: 4,
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Search(); // if user taps on this dashboard tab will be active
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.search,
                          size: 30,
                          color: currentTab == 1 ? kDarkBlue : Colors.grey[400],
                        ),
                        Icon(
                          Icons.fiber_manual_record,
                          color:
                              currentTab == 1 ? kDarkBlue : Colors.transparent,
                          size: 4,
                        )
                      ],
                    ),
                  )
                ],
              ),

              // Right Tab bar icons

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Settings(); // if user taps on this dashboard tab will be active
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.settings,
                          size: 30,
                          color: currentTab == 2 ? kDarkBlue : Colors.grey[400],
                        ),
                        Icon(
                          Icons.fiber_manual_record,
                          color:
                              currentTab == 2 ? kDarkBlue : Colors.transparent,
                          size: 4,
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Profile(); // if user taps on this dashboard tab will be active
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.account_circle_outlined,
                          size: 30,
                          color: currentTab == 3 ? kDarkBlue : Colors.grey[400],
                        ),
                        Icon(
                          Icons.fiber_manual_record,
                          color:
                              currentTab == 3 ? kDarkBlue : Colors.transparent,
                          size: 4,
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
