class newsApp{
  String? path;
  String? message;

  newsApp({
    required this.path,
    required this.message,
  });

  static  List<newsApp> newsData() {
    return [
      newsApp(path: 'assets/news/top100.jpeg', message: 'TOP 100 DJS 2024 - VOTING IS NOW OPEN'),
      newsApp(path: 'assets/news/tml.jpeg', message: 'Tomorrowland Events | List Of All Upcoming Tomorrowland Events In Boom, Belgium'),
      newsApp(path: 'assets/news/tomtainted.png', message: "Discover the hypnotic vibes of Tom Tainted's new hit!")
    ];
}
}