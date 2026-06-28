import 'package:flutter/material.dart';
import 'package:grace_community/resources/app_colors.dart';

class StoryAvatar extends StatelessWidget {
  final String storyTitle;
  final String storyImage;

  const StoryAvatar({
    super.key,
    required this.storyImage,
    required this.storyTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.primaryColor),
          ),
          width: 120,
          height: 120,
          padding: EdgeInsets.all(2),
          clipBehavior: Clip.antiAlias,
          child: Container(
            width: 120,
            height: 120,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: Image.asset(storyImage),
          ),
        ),
        SizedBox(height: 4),
        Text(
          storyTitle,
          style: TextStyle(color: Colors.grey, fontSize: 14),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
