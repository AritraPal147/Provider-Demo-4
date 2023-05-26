import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:provider_demo_4/models/data.dart';
import 'package:provider_demo_4/models/main_model.dart';

class ApiService {
  Future<List<Data>> getData() async {
    const url =
        'https://sde-007.api.assignment.theinternetfolks.works/v1/event';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final parsedJson = json.decode(response.body);
      MainModel model = MainModel.fromJson(parsedJson);
      return model.content.data;
    }
    throw Exception('Error fetching Data');
  }
}
