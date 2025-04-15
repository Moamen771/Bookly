import 'package:flutter/material.dart';
import '../../../../../core/assets_data.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
                image: NetworkImage(
                  AssetsData.testImage,
                ),
                fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
