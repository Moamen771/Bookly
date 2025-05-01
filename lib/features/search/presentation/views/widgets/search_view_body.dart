import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSearchTextField(),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        SearchResultListView(),
      ],
    );
  }
}
