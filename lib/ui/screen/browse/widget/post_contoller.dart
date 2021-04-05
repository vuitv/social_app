import 'package:get/get.dart';
import '../../../../models/post_model.dart';

class PostController extends GetxController {
  static PostController to = Get.find();

  final _post = Post().obs;

  PostController(Post post) {
    _post.value = post;
    _post.refresh();
  }

  @override
  void onReady() {
    print('PostController: onReady()');
    super.onReady();
    print('post: ${post?.userName}');
  }

  Post? get post => _post.value;

  void get liked => _post.update((val) {
        val!.liked = !val.liked;
        if (val.liked)
          val.like++;
        else
          val.like--;
      });
}
