import 'package:flutter/material.dart';
import 'package:study_ui_flutter_tora_2/screen/login_screen/login_compoment/sign_in_form.dart';
import 'package:study_ui_flutter_tora_2/screen/login_screen/login_compoment/sign_up_form.dart';

class TabbarController extends StatefulWidget {
  const TabbarController(this.outerTab, {Key? key, required this.tabController}) : super(key: key);

  final String outerTab;
  final TabController tabController;

  @override
  State<TabbarController> createState() => _TabbarControllerState();
}

class _TabbarControllerState extends State<TabbarController> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.tabController.index;

    widget.tabController.addListener(() {
      setState(() {
        selectedIndex = widget.tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: TabBarView(
            controller: widget.tabController,
            children: <Widget>[
              if (selectedIndex == 0)
                const SignInForm(),
              if (selectedIndex == 1)
                const SignUpForm(),
            ],
          ),
        ),
      ],
    );
  }
}