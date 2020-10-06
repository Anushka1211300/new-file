import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recent_news/viewmodels/newsArticleListViewModel.dart';



// ignore: must_be_immutable
class NewsList extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<NewsArticleListViewModel>(context);

  return Scaffold(
      appBar: AppBar(title: Text("Fresh News")),
      body: ListView.builder(
          itemCount: vm.articles.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                height: 100,
                width: 100,
                child: Image.network(vm.articles[index].imageURL)),
              title: Text(vm.articles[index].title),
            );
          }),
    );
  }
}
