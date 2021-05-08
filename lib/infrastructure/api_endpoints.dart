mixin ApiEndpoints {
  static const String _domain =
      'https://covid-19-coronavirus-statistics.p.rapidapi.com/v1';

  static String totalCases = '$_domain/total';

  static String news =
      'https://wrapapi.com/use/Shadow/covid19/news/1.0.0?wrapAPIKey=aIOK7RrdSib453QkcbWkBDW02i4Fq8TM';
}
