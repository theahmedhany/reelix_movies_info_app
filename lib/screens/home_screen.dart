import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reelix_movies_info_app/constants.dart';
import 'package:reelix_movies_info_app/widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: buildAppBar(),
      body: HomeScreenBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: kDefaultPadding),
        icon: SvgPicture.asset(
          "assets/icons/menu.svg",
          colorFilter: ColorFilter.mode(kTextColor, BlendMode.srcIn),
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            colorFilter: ColorFilter.mode(kTextColor, BlendMode.srcIn),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
