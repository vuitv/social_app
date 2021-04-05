import 'comment_model.dart';

class Post {
  String? avatarUrl;
  String? userName;
  String? timeStamp;
  String? imageUrl;
  bool liked = false;
  int like = 0;
  int shares = 0;
  int comment = 0;
  List<Comment> comments = [];

  Post({
    this.avatarUrl,
    this.userName,
    this.timeStamp,
    this.imageUrl,
    this.liked = false,
    this.like = 0,
    this.comment = 0,
    this.shares = 0,
    this.comments = const [],
  });
}
