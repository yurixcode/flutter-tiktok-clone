import 'package:toktik/domain/entities/video_post.dart';

class LocalVideoModel {
  String name;
  String videoUrl;
  int likes;
  int views;

  LocalVideoModel({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });

  factory LocalVideoModel.fromJsonMap(Map<String, dynamic> json) =>
      LocalVideoModel(
        name: json["name"] ?? "No video caption",
        videoUrl: json["videoUrl"],
        likes: json["likes"],
        views: json["views"],
      );

  VideoPost toVideoPostEntity() => VideoPost(
        caption: name,
        videoUrl: videoUrl,
        likes: likes,
        views: views,
      );
}
