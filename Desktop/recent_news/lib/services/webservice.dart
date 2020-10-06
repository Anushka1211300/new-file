import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:recent_news/models/newsarticle.dart';

class Webservice {
  Future<List<NewsArticle>> fetchTopHeadlines() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=0cf79049827541a9247f8b94b3843fd";

        final response = await http.get(url);

        if(response.statusCode ==200){
            
        final result = jsonDecode(response.body);

        Iterable list = result["articles"];

        return list.map((article)=> NewsArticle.fromJSON(article)).toList();


        }else{
          throw Exception ("failed to get top news");
        }
  }
}
