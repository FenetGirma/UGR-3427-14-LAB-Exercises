import 'package:flutter/foundation.dart';
import '../models/post.dart';
import '../service/service.dart';

class PostProvider extends ChangeNotifier {
  List<Post> _posts = [];
  List<Post> get posts => _posts;

  void fetchPosts() async {
    try {
      List<Post> fetchedPosts = await PostService().getPosts();
      _posts = fetchedPosts;
      notifyListeners();
    } catch (e) {
      print('Error fetching posts: $e');
    }
  }
}
