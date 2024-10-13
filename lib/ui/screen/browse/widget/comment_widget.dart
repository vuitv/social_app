import 'package:flutter/material.dart';
import '../../../../models/comment_model.dart';

class CommentItem extends StatelessWidget {
  final Comment item;

  const CommentItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Row(children: [
          Flexible(
            child: Text(
              item.userName ?? '',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(width: 3),
          Text(item.content ?? ''),
        ]),
      );
}
