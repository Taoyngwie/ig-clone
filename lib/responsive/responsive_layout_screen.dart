import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:ig_flutter_taoyngwie/models/user.dart';
import 'package:ig_flutter_taoyngwie/providers/user_provider.dart';
import 'package:ig_flutter_taoyngwie/utils/dimensions.dart';
import 'package:provider/provider.dart';

class ReponsiveLayout extends StatefulWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const ReponsiveLayout(
      {Key? key,
      required this.webScreenLayout,
      required this.mobileScreenLayout})
      : super(key: key);

  @override
  State<ReponsiveLayout> createState() => _ReponsiveLayoutState();
}

class _ReponsiveLayoutState extends State<ReponsiveLayout> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addData();
  }

  addData() async {
    UserProvider _userProvider = Provider.of(context, listen: false);
    await _userProvider.refreshUser();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > webScreenSize) {
        //web screen
        return widget.webScreenLayout;
      }
      //mobile screen
      return widget.mobileScreenLayout;
    });
  }
}
