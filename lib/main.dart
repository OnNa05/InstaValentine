import 'package:flutter/material.dart';
import 'package:lnsta_valentine/PostModel.dart';

import 'CommentModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InstaValentine',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          scaffoldBackgroundColor: Colors.pinkAccent),
      home: const MyHomePage(title: 'InstaValentine'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _controllerText = TextEditingController();
  final _controllerText2 = TextEditingController();
  bool isFavourite = false;
  bool isFavourite2 = false;
  final List<String> _Comments = [];
  final List<String> _Comments2 = [];

  @override
  Widget build(BuildContext context) {
    double widthContext = MediaQuery.of(context).size.width * 0.98;

    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
          ),
        ),
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(10.0),
            children: [
              Card(
                child: SizedBox(
                    width: widthContext,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    child: ClipOval(
                                      child: Image(
                                        height: 50.0,
                                        width: 50.0,
                                        image:
                                            AssetImage(posts[0].authorImageUrl),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                      padding: EdgeInsets.only(left: 10)),
                                  Text(posts[0].authorName)
                                ],
                              ),
                              IconButton(
                                icon: const Icon(Icons.more_vert),
                                onPressed: () {},
                              )
                            ],
                          ),
                          const Padding(padding: EdgeInsets.only(top: 10)),
                          Image.asset(posts[0].imageUrl),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(posts[0].string),
                          ),
                          const Padding(padding: EdgeInsets.only(top: 10)),
                          Row(
                            children: [
                              Text(
                                commentsPost_1[0].authorName,
                                style: const TextStyle(
                                    color: Colors.pinkAccent,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Padding(padding: EdgeInsets.only(left: 10)),
                              Text(commentsPost_1[0].text),
                            ],
                          ),
                          const Padding(padding: EdgeInsets.only(top: 10)),
                          Row(
                            children: [
                              Text(
                                commentsPost_1[1].authorName,
                                style: const TextStyle(
                                    color: Colors.pinkAccent,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Padding(padding: EdgeInsets.only(left: 10)),
                              Text(commentsPost_1[1].text),
                            ],
                          ),
                          for (int i = 0; i < _Comments.length; i++)
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  const Text(
                                    'UnKnow',
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(_Comments[i]),
                                  ),
                                ],
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    (isFavourite == true)
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: isFavourite
                                        ? Colors.pinkAccent
                                        : Colors.black,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      isFavourite = !isFavourite;
                                    });
                                  },
                                ),
                                Expanded(
                                  child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: TextField(
                                        textAlign: TextAlign.left,
                                        controller: _controllerText,
                                        onSubmitted: (_input) {
                                          setState(() {
                                            _Comments.add(_input);
                                            _controllerText.clear();
                                          });
                                        },
                                        decoration: const InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          hintText: 'Add a comment',
                                          hintStyle: TextStyle(
                                              color: Colors.pinkAccent
                                          ),
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              Card(
                child: SizedBox(
                    width: widthContext,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    child: ClipOval(
                                      child: Image(
                                        height: 50.0,
                                        width: 50.0,
                                        image:
                                            AssetImage(posts[1].authorImageUrl),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                      padding: EdgeInsets.only(left: 10)),
                                  Text(posts[1].authorName)
                                ],
                              ),
                              IconButton(
                                icon: const Icon(Icons.more_vert),
                                onPressed: () {},
                              )
                            ],
                          ),
                          const Padding(padding: EdgeInsets.only(top: 10)),
                          Image.asset(posts[1].imageUrl),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(posts[1].string),
                          ),
                          const Padding(padding: EdgeInsets.only(top: 10)),
                          Row(
                            children: [
                              Text(
                                commentsPost_2[0].authorName,
                                style: const TextStyle(
                                    color: Colors.pinkAccent,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Padding(padding: EdgeInsets.only(left: 10)),
                              Text(commentsPost_2[0].text),
                            ],
                          ),
                          const Padding(padding: EdgeInsets.only(top: 10)),
                          Row(
                            children: [
                              Text(
                                commentsPost_2[1].authorName,
                                style: const TextStyle(
                                    color: Colors.pinkAccent,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Padding(padding: EdgeInsets.only(left: 10)),
                              Text(commentsPost_2[1].text),
                            ],
                          ),
                          for (int i = 0; i < _Comments2.length; i++)
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  const Text(
                                    'UnKnow',
                                    style: TextStyle(
                                        color: Colors.pinkAccent,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(_Comments2[i]),
                                  ),
                                ],
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    (isFavourite2 == true)
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: isFavourite
                                        ? Colors.pinkAccent
                                        : Colors.black,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      isFavourite2 = !isFavourite2;
                                    });
                                  },
                                ),
                                Expanded(
                                  child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: TextField(
                                        textAlign: TextAlign.left,
                                        controller: _controllerText2,
                                        onSubmitted: (_input) {
                                          setState(() {
                                            _Comments2.add(_input);
                                            _controllerText2.clear();
                                          });
                                        },
                                        decoration: const InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          hintText: 'Add a comment',
                                          hintStyle: TextStyle(
                                              color: Colors.pinkAccent
                                          ),
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
              )
            ],
          ),
        ));
  }
}
