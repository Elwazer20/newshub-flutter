import 'package:json_annotation/json_annotation.dart';

part 'banner_response_model.g.dart';

@JsonSerializable()
class BannerResponseModel {
  final List<BannerData> data;
  final List<String> messages;
  final bool succeeded;

  BannerResponseModel({
    required this.data,
    required this.messages,
    required this.succeeded,
  });

  factory BannerResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BannerResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$BannerResponseModelToJson(this);
}

@JsonSerializable()
class BannerData {
  final int id;
  final String imageUrl;
  final String name;

  @JsonKey(name: 'creatAt')
  final String createdAt;

  BannerData({
    required this.imageUrl,
    required this.createdAt,
    required this.id,
    required this.name,
  });

  factory BannerData.fromJson(Map<String, dynamic> json) =>
      _$BannerDataFromJson(json);
  Map<String, dynamic> toJson() => _$BannerDataToJson(this);
}