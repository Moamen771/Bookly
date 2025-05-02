import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/repos/home_repo.dart';
import 'newest_books_state.dart';

class NewsetBooksCubit extends Cubit<NewestBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;
}
