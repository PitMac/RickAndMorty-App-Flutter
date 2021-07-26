import 'package:flutter/material.dart';
import 'package:rickandmorty_app/services/RickAndMortyServices.dart';
import 'package:rickandmorty_app/widgets/ListWidget.dart';

class EpisodesPage extends StatefulWidget {
  const EpisodesPage({Key? key}) : super(key: key);

  @override
  _EpisodesPageState createState() => _EpisodesPageState();
}

class _EpisodesPageState extends State<EpisodesPage> {
  final charactersProvider = new RaMServices();
  int id = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbarWidget(),
      body: FutureBuilder(
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
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Row(
          children: [
            FloatingActionButton(
              heroTag: 'btn1',
              backgroundColor: Colors.green,
              onPressed: () {
                if (id == 1) {
                  final snackBar =
                      SnackBar(content: Text('This is the first page'));

                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                } else {
                  setState(() {
                    id--;
                  });
                }
              },
              child: Icon(
                Icons.arrow_left_rounded,
              ),
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.green),
                color: Colors.black87,
              ),
              margin: EdgeInsets.symmetric(horizontal: 50),
              height: 40,
              child: Center(
                child: Text(
                  'Page: $id',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )),
            FloatingActionButton(
              heroTag: 'btn2',
              backgroundColor: Colors.green,
              onPressed: () {
                if (id == 34) {
                  final snackBar =
                      SnackBar(content: Text('Esta es la ultima pagina'));

                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                } else {
                  setState(() {
                    id++;
                  });
                }
              },
              child: Icon(Icons.arrow_right_rounded),
            ),
          ],
        ),
      ),
    );
  }
}

_appbarWidget() {
  return AppBar(
    title: Text('Locations'),
    backgroundColor: Colors.green,
  );
}
