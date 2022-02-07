class newsModel {
  String newsTitle;
  String imageUrl;
  String news;
  String newsDate;

  newsModel(
    this.newsTitle,
    this.imageUrl,
    this.news,
    this.newsDate,
  );
  static List<newsModel> samples = [
    newsModel(
        "በአምላክ ተሰማ የካፍ ቻምፒዮንስ ሊግ ጨዋታን ይመራል",
        'https://soccerethiopia.net/wp-content/uploads/2022/02/PicsArt_1643697940505.jpg',
        "በአምላክ ተሰማ የካፍ ቻምፒዮንስ ሊግ ጨዋታን ይመራል ኢትዮጵያዊው ዳኛ በአምላክ ተሰማ ከስድስት ቀናት በኋላ የቻምፒየንስ ሊግ ጨዋታን የሚመራ ይሆናል፡፡ የ2022 የአፍሪካ ቻምፒዮንስ ሊግ የማጣሪያ ጨዋታዎች ከያዝነው ሳምንት ጀምሮ በተለያዩ የአፍሪካ ሀገራት ክለቦች መካከል የሚደረግ ይሆናል፡፡ከስድስት ቀናት በኋላ በቀጣዩ ሳምንት ቅዳሜ ቀን 10፡00 ላይ የመጀመሪያ የማጣሪያ ጨዋታ የሆነው እና በሞሮኮው ራጃ ካዛብላንካ እና በደቡብ አፍሪካ አማዙሉ",
        "February 6, 2022"),
  ];
}


