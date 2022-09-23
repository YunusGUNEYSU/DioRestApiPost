import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_case/features/login/service/login_service.dart';
import 'package:test_case/features/login/view_model/login_view_model.dart';
import 'package:test_case/product/service/service_mixin.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with ProjectDioMixin {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ReqResProvider(LoginService(service)),
       builder: (context, child) {
         return SafeArea(
           child: Scaffold(
            appBar: AppBar(
              leading: const Text('LOGO'),
              actions: const [Icon(Icons.shopping_bag_outlined)]),
                 ),
         );
       },
     
    );
  }
}