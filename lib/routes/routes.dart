import 'package:flutter/cupertino.dart';
import 'package:rickandmorty_app/pages/CharactersPage.dart';
import 'package:rickandmorty_app/pages/DetailCPage.dart';
import 'package:rickandmorty_app/pages/DetailEPage.dart';
import 'package:rickandmorty_app/pages/DetailLPage.dart';
import 'package:rickandmorty_app/pages/EpisodesPage.dart';
import 'package:rickandmorty_app/pages/HomePage.dart';
import 'package:rickandmorty_app/pages/LocationsPage.dart';

final routes = {
  '/': (BuildContext context) => HomePage(),
  '/characters': (BuildContext context) => CharactersPage(),
  '/locations': (BuildContext context) => LocationPage(),
  '/episodes': (BuildContext context) => EpisodesPage(),
  '/detail': (BuildContext context) => DetailPage(),
  '/detailL': (BuildContext context) => DetailLPage(),
  '/detailE': (BuildContext context) => DetailEPage(),
};
