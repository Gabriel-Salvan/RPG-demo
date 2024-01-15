import 'package:flutter/material.dart';
import 'package:rpgdemo/app/UI/errorPage.dart';

import '../Models/list.dart';
import '../Models/models.dart';
import 'buttonPageView.dart';
import 'rollingText.dart';

class PageSelector extends StatefulWidget {
  final int route;
  const PageSelector({super.key, required this.route});

  @override
  State<PageSelector> createState() => _PageSelectorState();
}

class _PageSelectorState extends State<PageSelector> {
  @override
  Widget build(BuildContext context) {
    if (routes[widget.route] is TextPage) {
      return RollingText(textPage: routes[widget.route] as TextPage);
    } else if (routes[widget.route] is ButtonPage) {
      return ButtonPageView(
        page: routes[widget.route] as ButtonPage,
      );
    } else {
      return const ErrorPage();
    }
  }
}
