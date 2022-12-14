import 'package:dart_rss/dart_rss.dart';
import 'package:flutter/cupertino.dart';
import 'package:news_app/domain/api/news_api.dart';

class NewsProvider extends ChangeNotifier{
  
  RssFeed? _data;
  RssFeed? get data => _data;
  NewsProvider(){
    setUp();
  }
  
  void setUp({String? lang}) async {
    
    // final pref = await SharedPreferences.getInstance();
    // lang = pref.getString('app-language');
    
    _data = await NewsApi.getRss(lang : lang ?? 'ru');
    notifyListeners();
  }
}