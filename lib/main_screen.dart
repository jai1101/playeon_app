import 'package:flutter/material.dart';

import 'dashboard/home_screen.dart';
import 'dashboard/profile.dart';
import 'widgets/style.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  var mainTab = {
    "tabs": [
      {"icon": "assets/icons/web_series.png"},
      {"icon": "assets/icons/movie.png"},
      {"icon": "assets/icons/logo.png"},
      {"icon": "assets/icons/explore.png"},
      {"icon": "assets/icons/profile.png"}
    ],
  };

  @override
  void initState() {
    super.initState();
    tabController = TabController(
        length: 5,
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
      backgroundColor: Colors.black,
      body: TabBarView(
        controller: tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeScreen(),
          HomeScreen(),
          HomeScreen(),
          HomeScreen(),
          Profile(),
          // HistoryScreen(),
          // AdsScreen(),
          // SettingScreen(),
        ],
      ),
      bottomNavigationBar: Container(
        height: size.height * 0.085,
        decoration: const BoxDecoration(
          color: primaryColorB,
        ),
        child: TabBar(
          controller: tabController,
          indicator: const BoxDecoration(
              border: Border(top: BorderSide(color: primaryColor1, width: 2))),
          labelColor: primaryColor1,
          tabs: List.generate(mainTab['tabs']!.length, (index) {
            return Tab(
              child: Image.asset(
                mainTab['tabs']![index]['icon'].toString(),
                scale: 1,
                color: tabController!.index == index ? primaryColor1 : null,
              ),
            );
          }),
        ),
      ),
    );
  }
}
