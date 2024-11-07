import 'package:flutter/cupertino.dart';
import '../Models/AppModel.dart';
import '../Services/AppServices.dart';


class AppProvider extends ChangeNotifier {
  AppModel? appModel;
  Future<void> fetchapp() async {
    appModel = await AppServices.GetNews();
    notifyListeners();
  }
}