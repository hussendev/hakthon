import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hakthon/widgets/app_text.dart';
import 'package:hakthon/widgets/home_widget.dart';
import 'package:hakthon/widgets/second_home_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(vsync: this, length: 3);
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffF2F2F2),
        title: AppText(
          text: 'Welcome',
          size: 18,
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.notifications,
            color: Colors.black,
          )
        ],
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Tab(
              icon: AppText(
                text: 'test',
                size: 16,
              ),
            ),
            Tab(
              icon: AppText(
                text: 'test',
                size: 16,
              ),
            ),
            Tab(
              icon: AppText(
                text: 'test',
                size: 16,
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          homeWidget(),
          SecondHomeWidget(),
          Icon(Icons.directions_bike),
        ],
      ),
      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'favorite'),
        BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'favorite'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), label: 'favorite'),
      ]),
    );
  }
}
