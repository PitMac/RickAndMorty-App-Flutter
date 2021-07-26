import 'package:flutter/material.dart';
import 'package:rickandmorty_app/services/RickAndMortyServices.dart';
import 'package:rickandmorty_app/widgets/ListWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final charactersProvider = new RaMServices();
    return Scaffold(
      appBar: _appbarWidget(),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 300,
              child: DrawerHeader(
                padding: EdgeInsets.zero,
                child: Image.asset(
                  'assets/image.jpg',
                  fit: BoxFit.cover,
                  height: 20,
                ),
              ),
            ),
            ListTile(
              title: Text('Characters'),
              onTap: () {
                Navigator.pushNamed(context, '/characters');
              },
            ),
            ListTile(
              title: Text('Episodes'),
              onTap: () {
                Navigator.pushNamed(context, '/episodes');
              },
            ),
            ListTile(
              title: Text('Locations'),
              onTap: () {
                Navigator.pushNamed(context, '/locations');
              },
            ),
          ],
        ),
      ),
      body: _bodyHome(charactersProvider),
    );
  }
}

_bodyHome(charactersProvider) {
  final id = 1;
  return Column(
    children: [
      Expanded(
        flex: 1,
        child: Container(
          child: FutureBuilder(
            future: charactersProvider.getEpisode(id),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                final characters = snapshot.data;
                return listEWidget(characters);
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
      Expanded(
        flex: 1,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.green),
            color: Colors.black54,
          ),
          child: FutureBuilder(
            future: charactersProvider.getCharacters(id),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                final characters = snapshot.data;
                return listCWidget(characters);
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
      Expanded(
        flex: 1,
        child: Container(
          child: FutureBuilder(
            future: charactersProvider.getLocation(id),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                final characters = snapshot.data;
                return listLWidget(characters);
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    ],
  );
}

_appbarWidget() {
  return AppBar(
    title: Text('Rick And Morty'),
    backgroundColor: Colors.green,
  );
}
