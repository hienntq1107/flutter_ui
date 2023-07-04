import 'package:flutter/material.dart';
import 'package:study_ui_flutter_tora_2/screen/login_screen/login_compoment/tabbar_controler.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, initialIndex: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 280,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8),
                    spreadRadius: 0,
                    blurRadius: 30.0,
                    offset: const Offset(0, -4),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: SizedBox(
                      child: Image.asset(
                        'assets/images/logo_200x200.png',
                        width: 150,
                        height: 150,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBar(
                      indicatorWeight: 2.0,
                      indicatorColor: Colors.orange,
                      labelColor: Colors.orange,
                      controller: _tabController,
                      tabs: <Widget>[
                        InkWell(
                          onTap: () {
                            _tabController.animateTo(0);
                          },
                          child: const Tab(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            _tabController.animateTo(1);
                          },
                          child: const Tab(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                'Sign-Up',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  TabbarController('Sign In', tabController: _tabController),
                  TabbarController('Sign Up', tabController: _tabController),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
