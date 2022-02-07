class LiveScoreModel {
  bool live;
  String HteamImg;
  String AteamImg;
  String HteamName;
  String AteamName;
  String HteamScore;
  String AteamScore;
  String time;

  LiveScoreModel(this.live, this.HteamImg, this.AteamImg, this.HteamName,
      this.AteamName, this.HteamScore, this.AteamScore, this.time);

  static List<LiveScoreModel> sampleData = [
    LiveScoreModel(true, 'assets/images/arsenal.png',
        'assets/images/chelsea.png', 'Arsenal', 'Chelsea', '1', '0', "65'"),
    LiveScoreModel(true, 'assets/images/arsenal.png',
        'assets/images/arsenal.png', 'Arsenal', 'Chelsea', '1', '0', "78'")
  ];
}
