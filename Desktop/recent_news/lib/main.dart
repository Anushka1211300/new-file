import 'package:flutter/material.dart';
import 'package:recent_news/pages/newslist.dart';
import 'package:recent_news/viewmodels/newsArticleListViewModel.dart';
import 'package:provider/provider.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fresh News',
      // ignore: missing_required_param
      home: ChangeNotifierProvider(
        create: (context) => NewsArticleListViewModel(),
        child:NewsList(), 
      ),
       
    );
  }
}
