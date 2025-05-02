import '../../../data/models/book_model/book_model.dart';

abstract class FeaturedBooksState {
  const FeaturedBooksState();
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;

  FeaturedBooksSuccess({required this.books});
}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String errorMessage;

  FeaturedBooksFailure(this.errorMessage);
}
