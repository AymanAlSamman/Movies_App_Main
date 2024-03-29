import 'package:flutter/material.dart';
import 'package:movies_app/core/config/constants.dart';
import 'package:movies_app/screens/home/widget/new_releases.dart';
import 'package:movies_app/screens/home/widget/popular_movies.dart';
import 'package:movies_app/screens/home/widget/recommended_view.dart';

class HomeView extends StatelessWidget {
  static const String routeName = "Home";

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: Constants.mediaQuery.height,
          width: Constants.mediaQuery.width,
          child:   Column(
            children: [
              // const SizedBox(height: 50),

              PopularMovies(),
              // SizedBox(height: 3),

              // New Releases
              NewReleases(),


              SizedBox(height: 10),

              // Recommended
              RecommendedView(),
              // RecommendedMovies(),
              // RecommendedSecond(),
            ],
          ),
        ),
      ),
    );
  }
}
