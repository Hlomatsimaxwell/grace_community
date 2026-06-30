import 'package:flutter/material.dart';
import 'package:grace_community/resources/app_colors.dart';

class StoryAvatar extends StatelessWidget {
  final String imageUrl;
  final bool isViewed;
  final String storyName;

  const StoryAvatar({
    super.key,
    required this.imageUrl,
    this.isViewed = false,
    required this.storyName,
  });

  @override
  Widget build(BuildContext context) {
    final borderColor = isViewed ? Colors.grey.shade300 : AppColors.primaryColor;

    return Padding(
      padding: const EdgeInsets.only(right: 14.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(2.0), // Outer ring
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: borderColor, width: 2.0),
            ),
            child: Container(
              padding: const EdgeInsets.all(0.4),  //white gap
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                radius: 26,
                backgroundColor: Colors.grey.shade200,
                backgroundImage: AssetImage(imageUrl),
                child: imageUrl.isEmpty 
                    ? const Icon(Icons.person, color: Colors.grey) 
                    : null,
              ),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            storyName,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xFF4A4A4A),
            ),
          ),
        ],
      ),
    );
  }
}