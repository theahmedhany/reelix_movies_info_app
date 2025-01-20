import 'package:flutter/material.dart';
import 'package:reelix_movies_info_app/constants.dart';
import 'package:reelix_movies_info_app/models/movie_model.dart';
import 'package:reelix_movies_info_app/widgets/details_screen_body.dart';

class DetailsScreen extends StatelessWidget {
  final MovieModel movie;

  const DetailsScreen({super.key, required this.movie});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: DetailsScreenBody(movie: movie),
    );
  }
}
