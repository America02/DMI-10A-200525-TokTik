import 'package:toktik_200525/domain/datasources/video_posts_datasource.dart';
import 'package:toktik_200525/domain/entities/video_post.dart';
import 'package:toktik_200525/domain/repositories/video_posts_repository.dart';



class VideoPostsRepositoryImpl implements VideoPostRepository {

  final VideoPostDatasource videosDatasource;

  VideoPostsRepositoryImpl({
    required this.videosDatasource
  });


  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDatasource.getTrendingVideosByPage(page);
  }



}

