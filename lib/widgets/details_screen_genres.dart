import 'package:flutter/material.dart';
import 'package:reelix_movies_info_app/models/movie_model.dart';
import 'package:reelix_movies_info_app/widgets/master_genre_card.dart';
import '../../../constants.dart';

class DetailsScreenGenres extends StatelessWidget {
  const DetailsScreenGenres({
    super.key,
    required this.movie,
  });

  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movie.genra.length,
          itemBuilder: (context, index) => MasterGenreCard(
            genre: movie.genra[index],
          ),
        ),
      ),
    );
  }
}
