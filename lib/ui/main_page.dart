import 'package:flutter/material.dart';

import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'package:fanoos/base/widget/base_stateful_widget.dart';
import 'package:fanoos/ui/category_screen.dart';
import 'package:fanoos/ui/home_screen.dart';
import 'package:fanoos/res/assets_path.dart';
import 'package:fanoos/res/color_schema.dart';

class MainPage extends BaseStatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  BaseState<BaseStatefulWidget> baseCreateState() => _MainPageState();
}

class _MainPageState extends BaseState<MainPage> {
  final PageStorageBucket bucket = PageStorageBucket();
  final List<Widget> pages = [
    HomeScreen(),
    CategoryScreen(),
    HomeScreen(),
    CategoryScreen(),
    CategoryScreen(),
  ];
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget baseBuild(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: pages,
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      // Default is Colors.white.
      handleAndroidBackButtonPress: true,
      // Default is true.
      resizeToAvoidBottomInset: true,
      // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true,
      // Default is true.
      hideNavigationBarWhenKeyboardShows: true,
      // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        adjustScreenBottomPaddingOnCurve: true,
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      padding: NavBarPadding.only(top: 0, bottom: 0),
      navBarStyle:
          NavBarStyle.simple, // Choose the nav bar style with this property.
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Image.asset(ImagePathsKey.selectedHomeIcon),
        inactiveIcon: Image.asset(ImagePathsKey.unSelectedHomeIcon),
        title: ("Home"),
        activeColorPrimary: ColorSchema.SECONDARY_COLOR,
        inactiveColorPrimary: ColorSchema.SECONDARY_COLOR,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(ImagePathsKey.selectedCategoryIcon),
        inactiveIcon: Image.asset(ImagePathsKey.unSelectedCategoryIcon),
        title: ("Category"),
        activeColorPrimary: ColorSchema.SECONDARY_COLOR,
        inactiveColorPrimary: ColorSchema.SECONDARY_COLOR,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(ImagePathsKey.selectedShopIcon),
        inactiveIcon: Image.asset(ImagePathsKey.unSelectedShopIcon),
        title: ("Shops"),
        activeColorPrimary: ColorSchema.SECONDARY_COLOR,
        inactiveColorPrimary: ColorSchema.SECONDARY_COLOR,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(ImagePathsKey.selectedCartIcon),
        inactiveIcon: Image.asset(ImagePathsKey.unselectedCartIcon),
        title: ("Cart"),
        activeColorPrimary: ColorSchema.SECONDARY_COLOR,
        inactiveColorPrimary: ColorSchema.SECONDARY_COLOR,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          ImagePathsKey.unSelectedAccountIcon,
        ),
        inactiveIcon: Image.asset(ImagePathsKey.unSelectedAccountIcon),
        title: ("Account"),
        activeColorPrimary: ColorSchema.SECONDARY_COLOR,
        inactiveColorPrimary: ColorSchema.SECONDARY_COLOR,
      ),
    ];
  }
}
