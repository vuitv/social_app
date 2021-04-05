import 'dart:math';

import 'package:social_app/models/user_chat_model.dart';

import '../models/comment_model.dart';
import '../models/post_model.dart';
import '../models/user_model.dart';

final _random = Random();

final _userName = const [
  'Lisa Springston',
  'Andrew Clarkson',
  'Amanda Roberts',
  'Mark Robertson',
  'Francesca Anderson',
];

final _message = const [
  'Oh wow! Great looking image 😍',
  'I totally love this!',
  'Hello, i’m glad to see you :)',
  'Mark Robertson',
  'If only everyone res',
  'I want to see the sunrise 😍 ',
];

final _address = const [
  'San Francisco, CA',
  'Omicron Persei',
  'Cairo, Egypt',
  'Saudi Arabia',
  'Culiacan, Mexico',
];

final listPost = List.generate(
    5,
    (index) => Post(
          userName: _userName[_random.nextInt(_userName.length)],
          timeStamp: '${_random.nextInt(12)}h ago',
          liked: _random.nextBool(),
          like: _random.nextInt(1000),
          comment: _random.nextInt(1000),
          shares: _random.nextInt(1000),
          comments: List.generate(
              2,
              (index) => Comment(
                  userName: _userName[_random.nextInt(_userName.length)],
                  content: _message[_random.nextInt(_message.length)])),
        ));

final userProfile = User(
  name: _userName[_random.nextInt(_userName.length)],
  address: _address[_random.nextInt(_address.length)],
  posts: _random.nextInt(1000),
  followers: _random.nextInt(1000),
  following: _random.nextInt(1000),
);

final listUserChat = List.generate(
    15,
    (index) => UserChat(
          name: _userName[_random.nextInt(_userName.length)],
          isOnline: _random.nextBool(),
          unread: _random.nextInt(100),
          time: '${_random.nextInt(31)} fed',
          lastMessage: _message[_random.nextInt(_message.length)],
        ));
