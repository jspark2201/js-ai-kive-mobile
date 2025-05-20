import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_api_model.g.dart';
part 'post_api_model.freezed.dart';

@freezed
abstract class PostApiModel with _$PostApiModel {
  const factory PostApiModel({required String id}) = _PostApiModel;

  factory PostApiModel.fromJson(Map<String, dynamic> json) =>
      _$PostApiModelFromJson(json);
}
