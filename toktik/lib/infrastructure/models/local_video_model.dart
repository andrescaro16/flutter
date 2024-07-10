import 'package:toktik/domain/entities/video_post.dart';

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) =>
      LocalVideoModel(
        name: json['name'] ?? 'Never Gonna Give You Up',
        videoUrl:
            json['videoUrl'] ?? 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
        likes: json['likes'] ?? 17000000,
        views: json['views'] ?? 1552609511,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'videoUrl': videoUrl,
        'likes': likes,
        'views': views,
      };

  VideoPost toVideoPostEntity() {
    return VideoPost(
      caption: name,
      videoUrl: videoUrl,
      likes: likes,
      views: views,
    );
  }
}
