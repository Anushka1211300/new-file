
import 'package:recent_news/models/newsarticle.dart';

class NewsArticleViewModel{
    
    NewsArticle _newsArticle;
    

    // ignore: non_constant_identifier_names
    NewsArticleViewModel({NewsArticle article}): _newsArticle = article;

    String get title{
      return _newsArticle.title;
    }

    String get description {
      return _newsArticle.description;
    }
    
    String get imageURL{
      return _newsArticle.urlToImage;
    }

    String get url{
      return _newsArticle.url;
    }
    
  

}