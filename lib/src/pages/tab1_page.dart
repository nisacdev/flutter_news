import 'package:flutter/material.dart';
import 'package:flutter_news/src/constants.dart';
import 'package:provider/provider.dart';

import '../services/news_service.dart';
import '../widgets/news_list.dart';

class Tab1Page extends StatefulWidget {
  const Tab1Page({Key? key}) : super(key: key);

  @override
  State<Tab1Page> createState() => _Tab1PageState();
}

class _Tab1PageState extends State<Tab1Page> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final newsService = Provider.of<NewsServices>(context);

    return newsService.headLines.isEmpty
        ? const Center(child: CircularProgressIndicator(color: secondColor))
        : NewsList(newsList: newsService.headLines);
  }

  @override
  bool get wantKeepAlive => true;
}
