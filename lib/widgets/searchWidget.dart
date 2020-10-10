// Widget that renders the search page

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infinite_widgets/infinite_widgets.dart';

import 'package:markd/helpers/extras.dart';

class SearchWidget extends StatelessWidget {
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        title: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: 'Search...'
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(27, 0, 27, 0),
        child: ScrollConfiguration(
          behavior: DisableScrollGlow(),
          child: InfiniteGridView(
            padding: EdgeInsets.fromLTRB(0, 22, 0, 0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 16,
              mainAxisSpacing: 12,
              childAspectRatio: 91 / 140,
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                    image: ExactAssetImage('assets/placeholder.png'),
                    fit: BoxFit.cover,
                  ),
                border: Border.all(color: Colors.black),
                ),
              );
            },
          ),
        )
      ),
    );
  }
}
