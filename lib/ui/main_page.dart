import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slabs_quiz/app/app_colors.dart';
import 'package:slabs_quiz/ui/client/clients_page.dart';
import 'package:slabs_quiz/ui/common/empty.dart';
import 'package:slabs_quiz/ui/common/platform_adaptative.dart';
import 'package:slabs_quiz/ui/service/service_page.dart';
import 'package:slabs_quiz/ui/vehicle/vehicles_page.dart';

import 'common/custom_scaffold.dart';

class MainPage extends StatefulWidget {
  const MainPage({this.index});

  final int index;

  static const CLIENTS_PAGE = 0;
  static const VEHICLES_PAGE = 1;
  static const SERVICES_PAGE = 2;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController _tabController;
  int _index;
  bool _initFlag;
  List<TabItem> tabItems;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _initFlag = true;
    _index = widget.index == null ? 0 : widget.index;

    _tabController = PageController(initialPage: _index);
  }

  void _refreshMainPage(BuildContext context) {
    setState(() {
      _initFlag = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_initFlag) {
      _refreshMainPage(context);
    }
    tabItems = <TabItem>[
      TabItem(title: 'Clientes', icon: Icons.group, activeIcon: Icons.group),
      TabItem(
          title: 'Vehículos',
          icon: Icons.car_repair,
          activeIcon: Icons.car_repair),
      TabItem(
          title: 'Servicios',
          icon: Icons.settings_rounded,
          activeIcon: Icons.settings_rounded)
    ];

    final _bottomSheetItems = tabItems.map((TabItem item) {
      return BottomNavigationBarItem(
          label: item.title,
          icon: Icon(item.icon, size: 20.0),
          activeIcon:
              Icon(item.activeIcon, color: AppColors.primaryColor, size: 22.0));
    }).toList();

    return CustomScaffold(
      scaffoldKey: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        leading: Empty(),
        title: Text(tabItems[_index].title),
      ),
      bottomNavigationBar: PlatformAdaptiveBottomBar(
          activeColor: AppColors.secondaryColor,
          currentIndex: _index,
          onTap: onTap,
          items: _bottomSheetItems),
      body: PageView(
          controller: _tabController,
          onPageChanged: onTabChanged,
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[ClientsPage(), VehiclesPage(), ServicesPage()]),
    );
  }

  void onTap(int tab) {
    _tabController.jumpToPage(tab);
  }

  void onTabChanged(int tab) {
    setState(() {
      this._index = tab;
    });
  }
}

class TabItem {
  final String title;
  final IconData icon;
  final IconData activeIcon;

  const TabItem({this.title, this.icon, this.activeIcon});
}
