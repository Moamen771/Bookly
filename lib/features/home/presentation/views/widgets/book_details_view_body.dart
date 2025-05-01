import 'package:booklyapp/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            CustomDetailsBookAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .18,
              ),
              child: CustomBookImage(),
            ),
          ],
        ),
      ),
    );
  }
}
