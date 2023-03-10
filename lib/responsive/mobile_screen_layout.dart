import 'package:flutter/material.dart';
import 'package:ig_flutter_taoyngwie/models/user.dart' as model;
import 'package:ig_flutter_taoyngwie/providers/user_provider.dart';
import 'package:provider/provider.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({super.key});

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  @override
  Widget build(BuildContext context) {
    model.User? user = Provider.of<UserProvider>(context).getUser;
    return Scaffold(
      body: Center(child: Text(user!.username)),
    );
  }
}
