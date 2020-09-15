import 'package:arithmic/src/molecules/home_page_buttons_list.dart';
import 'package:flutter/material.dart';

/// widget contains all internal elements of the home page
class HomePageContent extends StatelessWidget {
  const HomePageContent({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(child: Text('ARITHMIC LOGO HERE')),
        HomePageButtonsList(),
      ],
    );
  }
}
