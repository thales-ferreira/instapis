class Post {
  String authorName;
  String likes;
  String comments;
  String authorImageUrl;
  String timeAgo;
  String imageUrl;

  Post({
    this.authorName,
    this.likes,
    this.comments,
    this.authorImageUrl,
    this.timeAgo,
    this.imageUrl,
  });
}

final List<Post> posts = [
  Post(
    authorName: 'Sam Martin',
    likes: '2,015',
    comments: '250',
    authorImageUrl: 'assets/images/user0.png',
    timeAgo: '5 min',
    imageUrl: 'assets/images/post0.jpg',
  ),
  Post(
    authorName: 'Sam Martin',
    likes: '3,015',
    comments: '305',
    authorImageUrl: 'assets/images/user0.png',
    timeAgo: '10 min',
    imageUrl: 'assets/images/post1.jpg',
  ),
];

final List<String> stories = [
  'assets/images/user1.png',
  'assets/images/user2.png',
  'assets/images/user3.png',
  'assets/images/user4.png',
  'assets/images/user0.png',
  'assets/images/user1.png',
  'assets/images/user2.png',
  'assets/images/user3.png',
];