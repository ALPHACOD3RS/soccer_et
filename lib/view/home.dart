import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:live_score_app/model/live_score_model.dart';
import 'package:live_score_app/news_screen/news_widget/live_score_slider.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:live_score_app/view/app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TopBar() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 30,
            height: 30,
            child: Image.asset(
              'assets/images/menu.png',
              color: Colors.black,
            ),
          ),
          Container(
            child: Text(
              'Matches',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),
            ),
          ),
          Container(
            width: 30,
            height: 30,
            child: Image.asset(
              'assets/images/search.png',
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey.shade900,
      body: Container(
        child: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: [
              TopBar(),
              Divider(
                color: Colors.white,
                // thickness: 0.1,

                height: 40,
              ),
              Container(
                child: Text(
                  'Live Matches',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Divider(
                height: 15,
                color: Colors.white,
              ),
              Container(
                width: double.infinity,
                height: 280,
                //  color: Colors.cyan,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: LiveScoreModel.sampleData.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child:
                            liveScoreSlider(LiveScoreModel.sampleData[index]),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
