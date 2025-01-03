import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik_200995/config/theme/app_theme.dart';
import 'package:toktik_200995/infrastructure/datasources/local_video_datasource_impl.dart';
import 'package:toktik_200995/infrastructure/repositories/video_posts_repository_impl.dart';
import 'package:toktik_200995/presentation/providers/discover_provider.dart';
import 'package:toktik_200995/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final videoPostReposity = VideoPostsRepositoryImpl(
      videosDatasource: LocalVideoDatasource()
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider( 
          lazy: false,
          create: (_) => DiscoverProvider( videosRepositoy: videoPostReposity )..loadNextPage() 
        ),
      ],
      child: MaterialApp(
        title: 'TokTik200525',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen()
      ),
    );
  }
}