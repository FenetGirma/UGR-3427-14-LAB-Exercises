import 'package:flutter/cupertino.dart';
import 'package:bloc_post/service_class.dart';
import 'data_model.dart';

class DataClass extends ChangeNotifier {
  DataModel? post;
  bool loading = false;

  getPostDatas() async {
    loading = true;
    post = (await getPostData())!;
    loading = false;

    notifyListeners();
  }
}
