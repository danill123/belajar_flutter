import 'package:flutter/material.dart';

class BasicState extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<BasicState> {
  final List movies = [
    "Demon ",
    "Star Wars",
    "u play",
    "anjay",
    "watchdogs",
    "blyat suka",
    "Younglex",
    "smk nasional depok",
    "Intern Hope",
    "Intern Hope",
    "Intern Hope",
    "Intern Hope",
    "Intern Hope",
  ];
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffd0e8f2),
        body: ListView.builder(
            itemCount: movies.length,
            itemBuilder: (BuildContext context, int index) {
              /*
              return Card(
                color: Colors.white,
                child: ListTile(
                  title: Text(movies[index]),
                ),
              );
              */
              return RaisedButton(
                  child: Card(
                    elevation: 5,
                    color: Colors.white,
                    child: ListTile(
                      title: Text(movies[index]),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HalamanKedua(
                                  Moviesname: movies.elementAt(index),
                                )));
                  });
            }));
  }
}

class HalamanKedua extends StatelessWidget {
  final String Moviesname;
  const HalamanKedua({Key key, this.Moviesname}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman Kedua")),
      body: Center(
        child: RaisedButton(
            child: Text("Kembali : btw ini name filmnya ${this.Moviesname}"),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}
