

  import 'package:flutter/cupertino.dart';
import 'package:recent_news/models/newsarticle.dart';
import 'package:recent_news/services/webservice.dart';

import 'newsArticleViewModel.dart';

class NewsArticleListViewModel extends ChangeNotifier{

     
     List<NewsArticleViewModel> articles = List<NewsArticleViewModel>();
     NewsArticleListViewModel(){
       _populateTopHeadlines();
     }

    // ignore: unused_element
    Future <void> _populateTopHeadlines() async{
      List<NewsArticle> newsArticles = await Webservice().fetchTopHeadlines();

      this.articles= newsArticles.map((article) => NewsArticleViewModel(article: article)).toList();
      notifyListeners();

    }


  }