import 'package:flutter/material.dart';
import 'package:reelix_movies_info_app/constants.dart';
import 'package:reelix_movies_info_app/models/movie_model.dart';
import 'package:reelix_movies_info_app/widgets/details_screen_genres.dart';
import 'backdrop_rating.dart';
import 'cast_and_crew.dart';
import 'title_duration_and_fav_btn.dart';

class DetailsScreenBody extends StatelessWidget {
  final MovieModel movie;

  const DetailsScreenBody({super.key, required this.movie});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackdropRating(size: size, movie: movie),
          SizedBox(height: kDefaultPadding / 2),
          TitleDurationAndFabBtn(movie: movie),
          DetailsScreenGenres(movie: movie),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2,
              horizontal: kDefaultPadding,
            ),
            child: Text(
              "Plot Summary",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              movie.plot,
              style: TextStyle(
                color: kTextColor.withValues(alpha: 0.6),
              ),
            ),
          ),
          CastAndCrew(casts: movie.cast),
        ],
      ),
    );
  }
}
