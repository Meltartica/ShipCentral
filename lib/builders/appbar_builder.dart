// AppBar Builder that is Called in All Pages
import 'package:flutter/material.dart';

class AppBarBuilder {
  static AppBar buildAppBar(String title) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      toolbarHeight: 100,
    );
  }
}

