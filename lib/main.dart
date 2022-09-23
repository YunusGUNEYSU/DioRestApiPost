import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_case/features/login/service/login_service.dart';
import 'package:test_case/features/login/view/login_view.dart';
import 'package:test_case/features/login/view_model/login_view_model.dart';


void main() {
  runApp(
    MultiProvider(
    providers:[
      ChangeNotifierProvider(create: (context) =>ReqResProvider(LoginService(Dio(BaseOptions(
        baseUrl: 'https://laravel-test-ecommerce-application.ferisoftdemo.com/api'
)))) ,),
     
    ],
    builder: (context, child) => const MyApp(),
    
    )
    
    );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.orange,
        ),
      ),
      home: const LoginView(),
    );
  }
}

