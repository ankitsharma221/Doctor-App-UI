import 'package:apiero_medica/Constants/Constants.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import 'Models/article_details_screen.dart';
import 'Models/article_view_model.dart';
import 'Models/articles_view_model.dart';
import 'Models/news_api.dart';

class ALLArticlesScreen extends StatefulWidget {
  const ALLArticlesScreen({super.key});

  @override
  State<ALLArticlesScreen> createState() => _ALLArticlesScreenState();
}

class _ALLArticlesScreenState extends State<ALLArticlesScreen> {
  // tab controller
  TabController? _tabController;
  var articlesListViewModel = ArticlesListViewModel(classRepository: NewsApi());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants().Bg,
      appBar: AppBar(
        backgroundColor: Constants().Bg,
        elevation: 0,
        title: Text(
          'Articles',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: FutureBuilder<List<ArticleViewModel>>(
        future: articlesListViewModel.fetchNewsHealth(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: const CircularProgressIndicator(),
            );
          } else {
            var news = snapshot.data;
            return SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: news.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ArticleDetailsScreen(
                                  //  sourceName: news[index]!.sourceName,
                                  title: news[index]!.title,
                                  author: news[index]!.author,
                                  publishedAt: news[index]!.publishedAt,
                                  description: news[index]!.description,
                                  content: news[index]!.content,
                                  urlToImage: news[index]!.urlToImage,
                                  url: news[index]!.url,
                                ),
                              ),
                            );
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            margin: const EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  width:
                                      MediaQuery.of(context).size.width * 0.32,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          news[index].urlToImage ?? '',
                                        ),
                                        fit: BoxFit.cover,
                                      )),
                                ),
                                const SizedBox(width: 8),
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        news[index].title ?? '',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        news[index].description ?? '',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontFamily: 'Urbanist',
                                          color: Colors.grey,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
