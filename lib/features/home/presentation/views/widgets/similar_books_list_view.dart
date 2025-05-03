import 'package:booklyapp/core/widgets/custom_loading_indicator.dart';
import 'package:booklyapp/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:booklyapp/features/home/presentation/manager/similar_books_cubit/similar_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .16,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) => CustomBookImage(
                imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,
              ),
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return ErrorWidget(state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
