// Helper file that contains misc. behaviors and widgets

import 'package:flutter/material.dart';

class DisableScrollGlow extends ScrollBehavior {
  @override
  Widget buildViewportChrome(BuildContext context, Widget child,
      AxisDirection axisDirection) {
    return child;
  }
}

class PlaceholderList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: List.generate(12, (index) {
        return Padding(
            padding: EdgeInsets.fromLTRB(0, 8, 18, 0),
            child: Container(
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage('assets/placeholder.png'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
              ),
            )
        );
      }),
    );
  }
}

class PlaceholderListWithRatings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: List.generate(12, (index) {
        return Padding(
            padding: EdgeInsets.fromLTRB(0, 8, 18, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  height: 145,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage('assets/placeholder.png'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(),
                  ),
                ),
                Padding(padding: EdgeInsets.all(6)),
                Row(
                  children: [
                    Icon(Icons.person),
                    Padding(padding: EdgeInsets.all(2)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Friend'),
                        StarPlaceholder(),
                      ],
                    )
                  ],
                ),
              ],
            )
        );
      }),
    );
  }
}

class StarPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        return Icon(Icons.star, size: 14);
      }),
    );
  }
}

class ReviewStarPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        return Icon(Icons.star, size: 20);
      }),
    );
  }
}

class ProfileReviewPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Book Title',
                    style: TextStyle(fontSize: 18),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  ReviewStarPlaceholder(),
                  Padding(padding: EdgeInsets.all(5)),
                  Opacity(
                    opacity: 0.5,
                    child: Text(
                      'Reviewed October 3, 2020',
                      style: TextStyle(fontSize: 18),
                    ),
                  )
                ],
              ),
              Container(
                width: 66,
                height: 95,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage('assets/placeholder.png'),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(),
                ),
              )
            ],
          ),
          Padding(padding: EdgeInsets.all(3)),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                'sed do eiusmod tempor incididunt ut labore et '
                'dolore magna aliqua.',
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}
