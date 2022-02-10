import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:live_score_app/controller/con_news.dart';
import 'package:live_score_app/model/news_model_net.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  Future<List<News>>? getNews;
  List<News> listNews = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNews = fetchNews(listNews);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 50,
      // height: 50,
      color: Colors.white,
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: FutureBuilder(
              future: getNews,
              builder:
                  (BuildContext context, AsyncSnapshot<List<News>> snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Container(
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 80),
                                        child: Container(
                                          width: 300,
                                          height: 350,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Card(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Column(
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(15),
                                                    topRight:
                                                        Radius.circular(15),
                                                    bottomLeft:
                                                        Radius.circular(0),
                                                    bottomRight:
                                                        Radius.circular(0),
                                                  ),
                                                  child: Image(
                                                    image: AssetImage(
                                                        'assets/images/preview.jpg'),
                                                    fit: BoxFit.contain,
                                                    //width: 70,
                                                  ),
                                                ),
                                                Divider(
                                                  color: Colors.white,
                                                ),
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    Text(
                                                      listNews[index].author,
                                                      style: TextStyle(
                                                          wordSpacing: 3,
                                                          color: Colors.pink,
                                                          fontSize: 16.6,
                                                          fontWeight:
                                                              FontWeight.w700),

                                                      // style: tex,
                                                    ),
                                                    SizedBox(
                                                      width: 50,
                                                    ),
                                                    Text(
                                                      listNews[index]
                                                          .datePublished,
                                                      style: TextStyle(
                                                          wordSpacing: 3,
                                                          color: Colors.black38,
                                                          fontSize: 14.6,
                                                          fontWeight:
                                                              FontWeight.w700),

                                                      // style: tex,
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 30, left: 20),
                                                  child: Text(
                                                    listNews[index].description,
                                                    maxLines: 2,
                                                    //overflow: TextOverflow.fade,
                                                    style: TextStyle(
                                                        wordSpacing: 3,
                                                        color: Colors
                                                            .blueGrey.shade700,
                                                        fontSize: 17.6,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )),
                        );
                      });
                } else {
                  return Center(
                    child: CircularProgressIndicator(
                      color: Colors.black,
                    ),
                  );
                }
              })),
    );
  }
}
