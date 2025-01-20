import 'package:flutter/material.dart';

import '../constants.dart';

class MasterGenreCard extends StatelessWidget {
  final String genre;

  const MasterGenreCard({super.key, required this.genre});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 4,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        genre,
        style:
            TextStyle(color: kTextColor.withValues(alpha: 0.8), fontSize: 16),
      ),
    );
  }
}
