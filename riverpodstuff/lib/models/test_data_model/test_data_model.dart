import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_data_model.freezed.dart';
part 'test_data_model.g.dart';

@freezed
class TestDataModels with _$TestDataModels {
  factory TestDataModels({
    required String name,
    required String description,
  }) = _TestDataModels;

  factory TestDataModels.fromJson(Map<String, dynamic> json) =>
      _$TestDataModelsFromJson(json);
}
