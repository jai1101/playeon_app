import 'package:flutter/material.dart';

import 'dashboard/home_screen.dart';

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
      {"title": "Home", "icon": "assets/icons/ic_home.png"},
      {"title": "History", "icon": "assets/icons/ic_history.png"},
      {"title": "Ads", "icon": "assets/icons/ic_ads.png"},
      {"title": "Settings", "icon": "assets/icons/ic_setting.png"}
    ]
  };
  @override
  void initState() {
    super.initState();
    tabController = TabController(
        length: 4,
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
          // HistoryScreen(),
          // AdsScreen(),
          // SettingScreen(),
        ],
      ),
    );
  }
}
