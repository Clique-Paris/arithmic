import 'package:arithmic/src/templates/header.dart';
import 'package:arithmic/src/templates/home_page_template.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: Header(height: 100), body: HomePageTemplate());
  }
}
