import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';

part 'news_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 0) // Unique typeId for NewsResponseModel
class NewsResponseModel extends HiveObject {
  @HiveField(0)
  final List<News> data;
  @HiveField(1)
  final List<String> messages;
  @HiveField(2)
  final bool succeeded;

  NewsResponseModel({
    required this.data,
    required this.messages,
    required this.succeeded,
  });

  factory NewsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewsResponseModelToJson(this);
}

@JsonSerializable()
@HiveType(typeId: 1) // Unique typeId for News (must be different from NewsResponseModel)
class News  extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String author;
  @JsonKey(name: 'imgUrl')
  @HiveField(2)
  final String imageUrl;
  @HiveField(3)
  final String desc;
  @JsonKey(name: 'newsDate')
  @HiveField(4)
  final String newsDate;
  @HiveField(5)
  final int id;
  @JsonKey(name: 'creatAt')
  @HiveField(6)
  final String createdAt;

  News({
    required this.title,
    required this.author,
    required this.imageUrl,
    required this.desc,
    required this.newsDate,
    required this.id,
    required this.createdAt,
  });

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);

  Map<String, dynamic> toJson() => _$NewsToJson(this);
}