import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Posts'),
        ),
        body: BlocProvider(
          create: (context) => PostBloc()..add(FetchPosts()),
          child: PostsList(),
        ),
      ),
    );
  }
}

// Bloc
abstract class PostEvent {}

class FetchPosts extends PostEvent {}

abstract class PostState {}

class PostsInitial extends PostState {}

class PostsLoading extends PostState {}

class PostsLoaded extends PostState {
  final List<dynamic> posts;
  PostsLoaded(this.posts);
}

class PostsError extends PostState {}

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostsInitial());

  @override
  Stream<PostState> mapEventToState(PostEvent event) async* {
    if (event is FetchPosts) {
      yield PostsLoading();
      try {
        final response = await http
            .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
        if (response.statusCode == 200) {
          final List<dynamic> posts = json.decode(response.body);
          yield PostsLoaded(posts);
        } else {
          yield PostsError();
        }
      } catch (_) {
        yield PostsError();
      }
    }
  }
}

// UI
class PostsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostBloc, PostState>(
      builder: (context, state) {
        if (state is PostsInitial) {
          return Center(child: Text('Press the button to load posts'));
        } else if (state is PostsLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is PostsLoaded) {
          return ListView.builder(
            itemCount: state.posts.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(state.posts[index]['title']),
                subtitle: Text(state.posts[index]['body']),
              );
            },
          );
        } else if (state is PostsError) {
          return Center(child: Text('Failed to fetch posts'));
        } else {
          return SizedBox();
        }
      },
    );
  }
}
