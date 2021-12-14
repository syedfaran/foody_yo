import 'package:flutter/material.dart';
import 'package:foody_yo/constants/app_string.dart';
import 'package:foody_yo/presentation/pages/main_page/filter_page/price_body.dart';
import 'package:foody_yo/presentation/pages/main_page/filter_page/sort_body.dart';

import 'package:foody_yo/presentation/widgets/foody_tab_appbar.dart';
import 'package:foody_yo/presentation/widgets/simple_text.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar:  FoodyTabAppBar(appbarSize: 150,
            title: AppString.filter,
            tabBar: [
              SimpleText(AppString.sort, fontSize: 26),
              SimpleText(AppString.price, fontSize: 26)
            ],
          ),
          body: TabBarView(
            children: [
              SortBody(),
              PriceBody(),
            ],
          ),
        ),
      ),
    );
  }
}
