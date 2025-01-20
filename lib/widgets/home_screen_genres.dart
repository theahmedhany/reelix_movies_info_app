import 'package:flutter/material.dart';
import 'package:reelix_movies_info_app/widgets/master_genre_card.dart';
import '../../../constants.dart';

class HomeScreenGenres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> genres = [
      "Action",
      "Crime",
      "Comedy",
      "Drama",
      "Horror",
      "Animation"
    ];
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genres.length,
        itemBuilder: (context, index) => MasterGenreCard(genre: genres[index]),
      ),
    );
  }
}
