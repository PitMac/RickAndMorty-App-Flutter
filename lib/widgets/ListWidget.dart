import 'package:flutter/cupertino.dart';
import 'package:rickandmorty_app/models/CharactersModel.dart';
import 'package:rickandmorty_app/widgets/CardEWidget.dart';
import 'package:rickandmorty_app/widgets/CardWidget.dart';

import 'CardLWidget.dart';

listWidget(List<Result> data) {
  return ListView.builder(
    itemCount: data.length,
    itemBuilder: (context, i) {
      return cardWidget(context, data[i]);
    },
  );
}

listCWidget(List<Result> data) {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: data.length,
    itemBuilder: (context, i) {
      return cardWidget(context, data[i]);
    },
  );
}

listLWidget(data) {
  return ListView.builder(
    itemCount: data.length,
    itemBuilder: (context, i) {
      return cardLWidget(context, data[i]);
    },
  );
}

listEWidget(data) {
  return ListView.builder(
    itemCount: data.length,
    itemBuilder: (context, i) {
      return cardEWidget(context, data[i]);
    },
  );
}
