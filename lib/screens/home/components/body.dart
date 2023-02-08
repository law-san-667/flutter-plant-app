import 'package:flutter/material.dart';

import 'featured_plants.dart';
import 'header_with_search_bar.dart';
import 'recomended_plant.dart';
import 'title_section.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //size provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBar(size: size),
          TitleSection(title: "Recommended", press: () {}),
          RecommendedPlants(size: size),
          TitleSection(title: "Featured Plants", press: () {}),
          FeaturedPlants(size: size)
        ],
      ),
    );
  }

}

