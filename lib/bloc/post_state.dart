import 'package:equatable/equatable.dart';
import 'package:flutter_infinite_list/model/model.dart';

abstract class PostState extends Equatable {
  const PostState();

  @override
  List<Object> get props => [];
}

// tell the presentation render a loading indicator while a initial batch of posts are loaded
class PostUnInitialized extends PostState {}

// tell the presentation that an error has occurred while fetching posts
class PostError extends PostState {}

// tell the presentation it has content to render
class PostLoaded extends PostState {
  final List<Post> posts;
  final bool hasReachedMax;

  const PostLoaded({
    this.posts,
    this.hasReachedMax,
  });

  PostLoaded copyWith({
    List<Post> posts,
    bool hasReachedMax,
  }) {
    return PostLoaded(
      posts: posts ?? this.posts,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  // @override
  // List<Object> get props => [posts, hasReachedMax];

  @override
  String toString() =>
      'PostLoaded { posts: ${posts.length}, hasReachedMax: $hasReachedMax }';
}
