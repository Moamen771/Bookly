import 'package:booklyapp/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedBooksListView(),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 50, bottom: 20),
                child: Text(
                  'Best Sellers',
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        BestSellerListView()
      ],
    );
  }
}
