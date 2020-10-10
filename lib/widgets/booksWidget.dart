// Widget that renders the Books page

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:scroll_app_bar/scroll_app_bar.dart';

import 'package:markd/helpers/extras.dart';

class BooksWidget extends StatelessWidget {
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: ScrollAppBar(
        controller: controller,
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
            'markd.',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 36,
            ),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.cast), onPressed: () {}
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(17, 0, 17, 0),
        child: ScrollConfiguration(
          behavior: DisableScrollGlow(),
          child: ListView(
            controller: controller,
            children: [
              Padding(padding: EdgeInsets.all(5)),
              Text(
                'POPULAR THIS WEEK',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Container(
                height: 151,
                child: ScrollConfiguration(
                  behavior: DisableScrollGlow(),
                  child: PlaceholderList(),
                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
              Text(
                'POPULAR WITH FRIENDS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Container(
                height: 195,
                child: ScrollConfiguration(
                  behavior: DisableScrollGlow(),
                  child: PlaceholderListWithRatings(),
                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
              Text(
                'NEW RELEASES',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Container(
                height: 151,
                child: ScrollConfiguration(
                  behavior: DisableScrollGlow(),
                  child: PlaceholderList(),
                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
              Text(
                'ALL TIME HITS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Container(
                height: 151,
                child: ScrollConfiguration(
                  behavior: DisableScrollGlow(),
                  child: PlaceholderList(),
                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
            ],
          ),
        ),
      ),
    );
  }
}
