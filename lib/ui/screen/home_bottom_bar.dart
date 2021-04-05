import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/home_controller.dart';
import '../../values/assets.dart';
import '../widgets/badge.dart';
import 'browse/browse_screen.dart';
import 'chats/chats_screen.dart';
import 'profile/profile_screen.dart';

class HomeBottomBar extends StatelessWidget {
  static const routeName = '/home';
  static final route = GetPage(name: routeName, page: () => HomeBottomBar());

  final c = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = <Widget>[
      CustomTab(icon: Assets.home),
      CustomTab(icon: Assets.feed),
      CustomTab(icon: Badge(20, minWidth: 45)),
    ];

    List<Widget> bodyView = <Widget>[
      BrowseScreen(),
      ProfileScreen(),
      ChatsScreen(),
    ];

    return WillPopScope(
        onWillPop: () => Future.value(false),
        child: Scaffold(
            body: TabBarView(
              controller: c!.tabController,
              physics: const NeverScrollableScrollPhysics(),
              children: bodyView,
            ),
            bottomNavigationBar: CustomTabBar(
              controller: c!.tabController,
              tabs: tabs,
            )));
  }
}

class CustomTabBar extends StatefulWidget {
  final List<Widget> tabs;
  final TabController controller;
  final Function(int)? onTap;

  const CustomTabBar({
    required this.tabs,
    required this.controller,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  void _handleTap(int index) {
    assert(index >= 0 && index < widget.tabs.length);
    widget.controller.animateTo(index);
    widget.onTap?.call(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> wrappedTabs = List.filled(widget.tabs.length, SizedBox());

    for (int index = 0; index < widget.tabs.length; index += 1) {
      wrappedTabs[index] = Expanded(
        child: InkWell(
          onTap: () => _handleTap(index),
          child: _TabStyle(
            selected: widget.controller.index == index,
            child: widget.tabs[index],
          ),
        ),
      );
    }

    return Container(
      decoration: BoxDecoration(
        color: BottomNavigationBarTheme.of(context).backgroundColor,
        boxShadow: [
          const BoxShadow(
            color: Color.fromARGB(10, 0, 0, 0),
            blurRadius: 20,
            offset: Offset(0, -10),
          ),
          const BoxShadow(
            color: Color.fromARGB(10, 0, 0, 0),
            offset: Offset(0, 0.5),
          ),
        ],
      ),
      child: Row(children: wrappedTabs),
    );
  }
}

class CustomTab extends StatelessWidget {
  final String? text;
  final dynamic icon;
  final int badgeNumber;

  const CustomTab({
    Key? key,
    this.text,
    this.icon,
    this.badgeNumber = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).padding.bottom > 18.0 ? 18.0 : MediaQuery.of(context).padding.bottom;

    final widgetIcon = icon is AssetImage
        ? Image(
            image: icon!,
            width: 20,
            color: IconTheme.of(context).color,
          )
        : icon is Widget
            ? icon
            : null;

    return Padding(
      padding: EdgeInsets.only(bottom: padding, left: 2, right: badgeNumber > 0 ? 6 : 2),
      child: Tab(
        text: text,
        icon: widgetIcon,
      ),
    );
  }
}

class _TabStyle extends AnimatedWidget {
  final bool selected;
  final Widget child;

  const _TabStyle({
    Key? key,
    required this.selected,
    required this.child,
  }) : super(key: key, listenable: kAlwaysDismissedAnimation);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final tabBarTheme = BottomNavigationBarTheme.of(context);
    final animation = kAlwaysDismissedAnimation;

    final defaultStyle =
        (tabBarTheme.selectedLabelStyle ?? themeData.primaryTextTheme.bodyText1)!.copyWith(inherit: true);
    final defaultUnselectedStyle =
        (tabBarTheme.unselectedLabelStyle ?? themeData.primaryTextTheme.bodyText1)!.copyWith(inherit: true);
    final textStyle = (selected
        ? TextStyle.lerp(defaultStyle, defaultUnselectedStyle, animation.value)
        : TextStyle.lerp(defaultUnselectedStyle, defaultStyle, animation.value))!;

    final selectedColor = (tabBarTheme.selectedItemColor ?? themeData.primaryTextTheme.bodyText1!.color)!;
    final unselectedColor = tabBarTheme.unselectedItemColor ?? selectedColor.withAlpha(0xB2); // 70% alpha

    final color = (selected
        ? Color.lerp(selectedColor, unselectedColor, animation.value)
        : Color.lerp(unselectedColor, selectedColor, animation.value))!;

    return DefaultTextStyle(
      style: textStyle.copyWith(color: color),
      child: IconTheme.merge(
        data: IconThemeData(size: 24.0, color: color),
        child: Stack(
          alignment: Alignment.center,
          children: [
            child,
            if (selected)
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Container(height: 2, color: color),
              ),
          ],
        ),
      ),
    );
  }
}
