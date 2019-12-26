import 'package:flutter/material.dart';
import 'package:flutter_infinite_list/model/model.dart';

class PostItem extends StatelessWidget {
  final Post post;

  const PostItem({Key key, @required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        '${post.id}',
        style: TextStyle(fontSize: 10.0),
      ),
      title: Text(post.title),
      isThreeLine: true,
      subtitle: Text(post.body),
      dense: true,
    );
  }
}
