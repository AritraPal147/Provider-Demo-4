import 'package:flutter/cupertino.dart';
import 'package:provider_demo_4/services/api_service.dart';

import '../models/data.dart';

class AppProvider extends ChangeNotifier {
  final _service = ApiService();
  bool isLoading = false;

  List<Data> _data = [];

  List<Data> get data => _data;

  Future<void> getAllData() async {
    isLoading = true;
    notifyListeners();

    final response = await _service.getData();

    _data = response;
    isLoading = false;
    notifyListeners();
  }
}
