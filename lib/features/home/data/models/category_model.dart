import 'package:json_annotation/json_annotation.dart';

part 'category_model.g.dart';

@JsonSerializable()
class CategoryResponseModel {
 final List<Category> data;
 final List<String> messages;
 final bool succeeded;

 CategoryResponseModel({
  required this.data,
  required this.messages,
  required this.succeeded,
 });

 factory CategoryResponseModel.fromJson(Map<String, dynamic> json) =>
     _$CategoryResponseModelFromJson(json);

 Map<String, dynamic> toJson() => _$CategoryResponseModelToJson(this);
}

@JsonSerializable()
class Category {
 final String name;
 final int id;
 @JsonKey(name: 'creatAt')
 final String createdAt;

 Category({
  required this.name,
  required this.id,
  required this.createdAt,
 });

 factory Category.fromJson(Map<String, dynamic> json) =>
     _$CategoryFromJson(json);

 Map<String, dynamic> toJson() => _$CategoryToJson(this);
}