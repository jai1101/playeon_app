import 'package:flutter/material.dart';

import 'dashboard/home_screen.dart';
import 'dashboard/profile.dart';
import 'dashboard/searchscreen.dart';
import 'widgets/style.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  var mainTab = {
    "tabs": [
      {"icon": "assets/icons/search_ic.png"},
      {"icon": "assets/icons/logo.png"},
      {"icon": "assets/icons/profile_ic.png"}
    ],
  };

  @override
  void initState() {
    super.initState();
    tabController = TabController(
        length: 3,
        animationDuration: const Duration(milliseconds: 200),
        initialIndex: 0,
        vsync: this);
    tabController!.addListener(handleTabSelection);
  }

  handleTabSelection() {
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: TabBarView(
        controller: tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          searchscreen(),
          HomeScreen(),
          Profile(),
          // HistoryScreen(),
          // AdsScreen(),
          // SettingScreen(),
        ],
      ),
      bottomNavigationBar: Container(
        height: size.height * 0.085,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [primaryColor1, cardBackgroundColor.withOpacity(0.8)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: TabBar(
          controller: tabController,
          indicatorColor: primaryColor1,
          indicator: const BoxDecoration(
              border: Border(top: BorderSide(color: textColor1, width: 2))),
          tabs: List.generate(mainTab['tabs']!.length, (index) {
            return Tab(
              child: Image.asset(
                mainTab['tabs']![index]['icon'].toString(),
                scale: 1,
                color:              tabController!.index == index ? primaryColorB : null,
              ),
            ); 
          }),
        ),
      ),
    );
  }
}
