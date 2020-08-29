import 'package:flutter/material.dart';

import 'widgets/card_profile_information_widget.dart';
import 'widgets/discover_list_item_widget.dart';
import 'widgets/featured_article_banner_widget.dart';
import 'widgets/title_and_subtitle_widget.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              CardProfileInformationWidget(),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.only(left: 20),
                  child: natureDiscoveryData()),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: FeaturedArticleBannerWidget()),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        )));
  }

  Widget natureDiscoveryData() {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleAndSubtitle(
          title: "Notable works",
          subTitle: "Based on the popularity of articles",
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 230,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return DiscoverListItemWidget();
            },
          ),
        ),
      ],
    ));
  }
}
