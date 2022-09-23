import 'package:flutter/cupertino.dart';
import 'package:test_case/features/login/model/login_model.dart';
import 'package:test_case/features/login/service/login_service.dart';

class ReqResProvider extends ChangeNotifier {
  final ILoginService _iLoginService;

  ReqResProvider(this._iLoginService);
    
  

  LoginModel? resources;
  bool isLoading=false;
  
  void _changeLoading(){
    isLoading=!isLoading;
    notifyListeners();
  }


  Future<bool> fetc(String email,String password) async{
    _changeLoading();
   resources=await _iLoginService.fetchLoginItem(email,password);
   if (resources==null) {
    _changeLoading();
     return false;

   }else {
    _changeLoading();
     return true;
   }
   
  }
}