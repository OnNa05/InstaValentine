import 'package:flutter/material.dart';
import '../model/PostModel.dart';
import '../model/CommentModel.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  final String title = "InstaValentine";

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          for (int i = 0; i < posts.length; i++)
            cardPost(posts[i], comments[i]),
        ],
      ),
    );
  }

  Card cardPost(Post post, List<Comment> comment) {
    final _controllerText = TextEditingController();
  
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
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
                        height: 50,
                        width: 50,
                        image: AssetImage(post.authorImageUrl),
                        fit: BoxFit.cover,
                      )),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(post.authorName))
                  ],
                ),
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {},
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                child: Image(
                  image: AssetImage(post.imageUrl),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Text(post.string)),
              ],
            ),
            for (int i = 0; i < comment.length; i++)
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  children: [
                    Container(
                        child: Text(
                      comment[i].authorName,
                      style: TextStyle(
                          color: Colors.pinkAccent,
                          fontWeight: FontWeight.bold),
                    )),
                    Container(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          comment[i].text,
                        )),
                  ],
                ),
              ),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          post.isLike = !post.isLike;
                        });
                      },
                      icon: Icon(
                        post.isLike ? Icons.favorite : Icons.favorite_border,
                        color: post.isLike ? Colors.pinkAccent : Colors.black,
                      ),
                    )),
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextField(
                        textAlign: TextAlign.left,
                        controller: _controllerText,
                        onSubmitted: (_input) {
                          setState(() {
                            Comment newComment = Comment(authorName:'Unknown',text:"");
                            newComment.setText(_input);
                            comment.add(newComment);
                          });
                        },
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Add a comment',
                          hintStyle: TextStyle(color: Colors.pinkAccent),
                        ),
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
