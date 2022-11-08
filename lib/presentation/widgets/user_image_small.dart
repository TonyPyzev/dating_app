import 'package:flutter/material.dart';

class UserImageSmall extends StatelessWidget {
  const UserImageSmall({
    super.key,
    required this.imageURL,
  });

  final String imageURL;

  final Size kImageSize = const Size(80.0, 80.0);
  final double kImageBorderRadius = 8.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 8,
        right: 8,
      ),
      height: kImageSize.height,
      width: kImageSize.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageURL),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(kImageBorderRadius),
      ),
    );
  }
}
