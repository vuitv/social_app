class UserChat {
  final String? name;
  final String? avatarUrl;
  final bool isOnline;
  final String? time;
  final int unread;
  final String? lastMessage;

  UserChat({
    this.name,
    this.avatarUrl,
    this.isOnline = false,
    this.time,
    this.unread = 0,
    this.lastMessage,
  });
}
