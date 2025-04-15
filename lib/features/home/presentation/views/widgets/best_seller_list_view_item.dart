import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/assets_data.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: NetworkImage(
                      AssetsData.testImage,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(width: 30),
            Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .50,
                  child: Text(
                    'Harry Potter And The Goblet Of Fire',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
