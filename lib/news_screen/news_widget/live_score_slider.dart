// import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:live_score_app/model/live_score_model.dart';
import 'package:live_score_app/model/news_model.dart';

liveScoreSlider(LiveScoreModel livescoremodel) {
  return livescoremodel.live
      ? Container(
          margin: EdgeInsets.all(10),
          width: 200,
          // height: 00,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(15),
            color: Colors.deepPurpleAccent.withOpacity(1),
          ),

          child: Container(
              child: Column(
            children: [
              Container(
                // width: 50,
                // height: 50,
                child: Row(
                  children: [
                    livescoremodel.live
                        ? Padding(
                            padding: const EdgeInsets.only(top: 20, left: 10),
                            child: Container(
                              // color: Colors.white,
                              width: 60,
                              height: 30,
                              decoration: BoxDecoration(
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Colors.green.withOpacity(0.5),
                                //     spreadRadius: 2,
                                //     blurRadius: 3,
                                //     offset: Offset(
                                //         0, 1), // changes position of shadow
                                //   ),
                                // ],
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white.withOpacity(0.9),
                              ),
                              padding: EdgeInsets.only(top: 3, left: 10),
                              child: Text(
                                'Live',
                                style: TextStyle(
                                    color: Colors.green.shade900,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        : Container(),
                    // Image.asset(livescoremodel.AteamImg),
                    livescoremodel.live
                        ? Container(
                            margin: EdgeInsets.only(top: 20, left: 80),
                            // top: 18,
                            // left: 12,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.green.withOpacity(0.9),
                                    spreadRadius: 1,
                                    blurRadius: 4,
                                    offset: Offset(
                                        0, 0), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(15),
                                //color: Colors.green.withOpacity(0.1),
                              ),
                              child: Image.asset('assets/images/rec.png'),
                            ),
                          )
                        : Container(),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30, left: 4),
                // width: 60,
                // height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        // margin: EdgeInsets.only(left: 20),
                        // width: 60,
                        height: 60,
                        child: Row(
                          children: [
                            Image.asset(livescoremodel.HteamImg),
                            SizedBox(width: 10),
                            Text(
                              livescoremodel.HteamScore,
                              style: TextStyle(
                                  color: Colors.grey.shade100,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                    Text(':',
                        style: TextStyle(
                            color: Colors.grey.shade100,
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                    Container(
                        // margin: EdgeInsets.only(left: 20),
                        // width: 60,
                        height: 60,
                        child: Row(
                          children: [
                            Text(
                              livescoremodel.AteamScore,
                              style: TextStyle(
                                  color: Colors.grey.shade100,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 10),
                            Image.asset(livescoremodel.AteamImg),
                            SizedBox(width: 10),
                          ],
                        )),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          livescoremodel.HteamName,
                          style: TextStyle(
                              color: Colors.grey.shade100,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          width: 55,
                        ),
                        Text(
                          livescoremodel.AteamName,
                          style: TextStyle(
                              color: Colors.grey.shade100,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 0),
                child: Container(
                  width: 50,
                  height: 35,
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Colors.green.shade300, width: 2),
                      color: Colors.green.shade50,
                      borderRadius: BorderRadius.circular(17)),
                  // alignment: Alignment.bottomCenter,
                  child: Text(
                    livescoremodel.time,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.green.shade900,
                        fontWeight: FontWeight.w800,
                        fontSize: 25),
                  ),
                ),
              ),
            ],
          )),
        )
      : Container();
}
