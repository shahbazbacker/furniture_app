import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/Models/Item.dart';
import 'package:furniture_app/Screens/home/home.dart';
import 'package:furniture_app/Screens/profile/profile.dart';
import 'package:furniture_app/Screens/search/search.dart';
import 'package:furniture_app/Screens/settings/settings.dart';
import 'package:furniture_app/components/bottom_nav.dart';
import 'package:furniture_app/constants.dart';

class DetailsScreen extends StatefulWidget {
  final Item item;

  const DetailsScreen({Key key, this.item}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    DetailsScreen(),
    Search(),
    Settings(),
    Profile(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = DetailsScreen();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
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
                            DetailsScreen(); // if user taps on this dashboard tab will be active
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
      body: SafeArea(
        child: PageStorage(
          bucket: bucket,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.040),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: size.height * 0.04),
                  padding: EdgeInsets.only(bottom: size.height * 0.2),
                  height: size.height - 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(kDefaultPadding * 2),
                        bottomRight: Radius.circular(kDefaultPadding * 2),
                      ),
                      color: kDarkBlue),
                ),
                Align(
                  alignment: Alignment(-0.7, -0.8),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 35,
                      ),
                      Icon(
                        Icons.photo_camera,
                        color: kWhiteColor,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Point your camera at a furniture",
                        style: TextStyle(
                            color: kWhiteColor,
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Hero(
                    tag: widget.item.id,
                    child: Image.asset(
                      widget.item.image,
                      height: size.height * 0.4,
                      fit: BoxFit.fitHeight,
                    )),
                Align(
                    alignment: Alignment(1, 0.87),
                    child: BottomNavBar(item: widget.item)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
