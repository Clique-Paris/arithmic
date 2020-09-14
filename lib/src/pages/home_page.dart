import 'package:arithmic/src/services/theme_service.dart';
import 'package:arithmic/src/templates/header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(height: 100),
      body: Column(
        children: [
          Expanded(
              child: Center(
            child: Text('Hello world!'),
          ))
        ],
      ),
    );
  }
}
