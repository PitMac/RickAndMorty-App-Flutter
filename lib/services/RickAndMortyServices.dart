import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rickandmorty_app/models/CharactersModel.dart';
import 'package:rickandmorty_app/models/EpisodeModel.dart';
import 'package:rickandmorty_app/models/LocationModel.dart';

class RaMServices {
  Future getCharacters(id) async {
    var isReady = true;
    final url = 'rickandmortyapi.com';
    final queryParameters = {'page': '$id'};
    var uri = Uri.https(url, '/api/character', queryParameters);

    while (isReady) {
      try {
        final resp = await http.get(uri);
        final decodedData = jsonDecode(resp.body);
        late final characters = new Characters.fromJson(decodedData);
        isReady = false;
        return characters.results;
      } catch (e) {
        print(e);
      }
    }
  }

  Future getLocation(id) async {
    var isReady = true;
    final url = 'rickandmortyapi.com';
    final queryParameters = {'page': '$id'};
    var uri = Uri.https(url, '/api/location', queryParameters);

    while (isReady) {
      try {
        final resp = await http.get(uri);
        final decodedData = jsonDecode(resp.body);
        late final characters = new Localitations.fromJson(decodedData);
        isReady = false;
        return characters.results;
      } catch (e) {
        print(e);
      }
    }
  }

  Future getEpisode(id) async {
    var isReady = true;
    final url = 'rickandmortyapi.com';
    final queryParameters = {'page': '$id'};
    var uri = Uri.https(url, '/api/episode', queryParameters);

    while (isReady) {
      try {
        final resp = await http.get(uri);
        final decodedData = jsonDecode(resp.body);
        late final characters = new Episodes.fromJson(decodedData);
        isReady = false;
        return characters.results;
      } catch (e) {
        print(e);
      }
    }
  }
}
