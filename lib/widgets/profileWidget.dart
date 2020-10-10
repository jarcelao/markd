// Widget that renders the profile page

import 'package:flutter/material.dart';

import 'package:markd/helpers/extras.dart';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ScrollConfiguration(
        behavior: DisableScrollGlow(),
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 186,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage('assets/placeholder.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Opacity(
                    opacity: 0.5,
                    child: IconButton(
                      icon: Icon(Icons.more_vert),
                    onPressed: () {},
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(padding: EdgeInsets.all(57)),
                    Icon(Icons.account_circle, size: 140),
                  ],
                ),
              ],
            ),
            Center(
              child: Text(
                'John Smith',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_pin),
                Text('QC, Philippines')
              ],
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(16, 30, 16, 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '42',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                            Text('Books')
                          ],
                        ),
                        Container(height: 43, child: VerticalDivider(
                          thickness: 2,
                          color: Colors.black,
                        )
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '15',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                            Text('This year')
                          ],
                        ),
                        Container(height: 43, child: VerticalDivider(
                          thickness: 2,
                          color: Colors.black,
                        )
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '31',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                            Text('Following')
                          ],
                        ),
                        Container(height: 43, child: VerticalDivider(
                          thickness: 2,
                          color: Colors.black,
                        )
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '6',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                            Text('Followers')
                          ],
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(17)),
                    Text(
                        'FAVORITES',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                    ),
                    Container(
                      height: 151,
                      child: ScrollConfiguration(
                        behavior: DisableScrollGlow(),
                        child: PlaceholderList(),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(17)),
                    Text(
                      'REVIEWS',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    ProfileReviewPlaceholder(),
                    ProfileReviewPlaceholder(),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}
