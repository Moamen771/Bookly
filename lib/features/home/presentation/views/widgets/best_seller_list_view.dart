import 'package:booklyapp/core/widgets/custom_loading_indicator.dart';
import 'package:booklyapp/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:booklyapp/features/home/presentation/manager/newest_books_cubit/newest_books_state.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: BookListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewestBooksFailure) {
          return ErrorWidget(state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
