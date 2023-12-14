import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/test_data_model/test_data_model.dart';
import '../constants/constants.dart';
part 'test_data_provider.g.dart';

@riverpod
class ListNotifier extends _$ListNotifier {
  @override
  FutureOr<List<TestDataModels>> build() async {
    final response = await http.get(Uri.http(URL, '/'));
    final json = jsonDecode(response.body) as List<dynamic>;
    final list = json.map((row) {
      return TestDataModels(name: row['name'], description: row['description']);
    }).toList();
    return list;
  }

  Future<void> updateName() async {
    final response = await http.post(
      Uri.http(URL, '/post/'),
      body: {"name": "Hemanth", "description": "this is epik update"},
    );
    final List<dynamic> responseData = jsonDecode(response.body);

    final List<TestDataModels> newTestData = responseData
        .map((jsonObject) => TestDataModels.fromJson(jsonObject))
        .toList();
    ref.invalidateSelf();
    state = AsyncData(newTestData);

    await future;
  }
}
