class User {
  final String? name;
  final String? address;
  final String? avatarUrl;
  final int posts;
  final int followers;
  final int following;
  final List<String> images;

  User({
    this.name,
    this.address,
    this.avatarUrl,
    this.posts = 0,
    this.followers = 0,
    this.following = 0,
    this.images = const [],
  });
}
