import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:star_news_application/app/modules/detail_news/views/detail_news_view.dart';

class CardNewsWidget extends StatelessWidget {
  const CardNewsWidget(
      {Key? key, required this.title, required this.description, required this.id})
      : super(key: key);
  final String title, description, id;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        Get.to(() => DetailNewsView(), arguments: {'id': id});
        print(id);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        height: 138,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.grey,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  title,
                ),
                subtitle: Text(
                  description,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
