import 'package:booklyapp/features/home/data/models/book_model/book_model.dart';

abstract class SimilarBooksState {
  const SimilarBooksState();
}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoading extends SimilarBooksState {}

class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> books;

  SimilarBooksSuccess(this.books);
}

class SimilarBooksFailure extends SimilarBooksState {
  final String errorMessage;

  SimilarBooksFailure(this.errorMessage);
}
