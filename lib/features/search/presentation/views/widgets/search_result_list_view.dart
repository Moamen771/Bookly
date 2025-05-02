import 'package:booklyapp/features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/features/home/data/models/book_model/image_links.dart';
import 'package:booklyapp/features/home/data/models/book_model/volume_info.dart';
import 'package:flutter/material.dart';
import '../../../../home/presentation/views/widgets/book_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: BookListViewItem(
              bookModel: BookModel(
                volumeInfo: VolumeInfo(
                  imageLinks: ImageLinks(
                    smallThumbnail: 'smallThumbnail',
                    thumbnail: 'thumbnail',
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
