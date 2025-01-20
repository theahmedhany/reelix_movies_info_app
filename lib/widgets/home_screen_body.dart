import 'package:flutter/material.dart';
import 'package:reelix_movies_info_app/constants.dart';
import 'package:reelix_movies_info_app/widgets/home_screen_genres.dart';
import 'categories_list.dart';
import 'movie_carousel.dart';

class HomeScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CategoriesList(),
          HomeScreenGenres(),
          SizedBox(height: kDefaultPadding),
          MovieCarousel(),
        ],
      ),
    );
  }
}
