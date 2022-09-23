

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_case/features/home/view/home_view.dart';
import 'package:test_case/features/login/view_model/login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _emailController=TextEditingController();
  final _passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,backgroundColor:Colors.transparent,),
      body:Consumer<ReqResProvider>(builder: (context, reqResProvider, child) {
        return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Giris Yap',style:Theme.of(context).textTheme.headline4,),
           Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                         icon: Icon(Icons.email),
                        border: InputBorder.none,
                        hintText: 'Email',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              //password
          Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                       icon: Icon(Icons.lock),
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                    ),
                    
                  ),
                  
                  
                ),
              ),
             
          
          ElevatedButton(onPressed: () async{
          if (await reqResProvider.fetc(_emailController.text.trim(),_passwordController.text.trim())) {
            Navigator.push(context, MaterialPageRoute(builder:(context) => const HomeView()));
          }else{
            return print('yanlis');
          }
          
          }, child: const Text('Giris Yap')),
          
          
          //Email control
         

        ],
        
      );
      },)
      
    );
  }
}