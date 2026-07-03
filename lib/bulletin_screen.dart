import 'package:flutter/material.dart';
import 'package:grace_community/resources/app_colors.dart';
import 'package:grace_community/search_text_field.dart';

class BulletinScreen extends StatelessWidget {
  const BulletinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFE),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchTextField(onChanged: (value) {}, value: ""),
            const SizedBox(height: 16),

            SizedBox(
              height: 38,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    _buildFilterChip('General', isSelected: true),
                    _buildFilterChip('Youth', isSelected: false),
                    _buildFilterChip('Events', isSelected: false),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            _buildAnnouncementCard(
              imageAsset: 'assets/icons/foodvolunteers.jpg',
              tagLabel: 'Urgent',
              tagColor: const Color.fromARGB(255, 165, 13, 2),
              date: 'October 24, 2023',
              title: 'Food Drive Volunteers Needed',
              description:
                  'We are looking for 10 more volunteers to help with our monthly community food...',
            ),
            _buildAnnouncementCard(
              imageAsset: 'assets/icons/bible.jpg',
              tagLabel: 'General',
              tagColor: const Color.fromARGB(255, 51, 123, 54),
              date: 'October 22, 2023',
              title: 'New Fall Bible Study Series',
              description:
                  'Join us as we bwgin our new 8-week series exploring the book of Phlippians...',
            ),
            _buildAnnouncementCard(
              imageAsset: 'assets/icons/campfire.jpg',
              tagLabel: 'Youth',
              tagColor: Colors.deepOrange,
              date: 'October 20, 2023',
              title: 'Youth Retreat Registration Open',
              description:
                  'Early bird registration for the Winter Retreat is now live! Secure your spot for...',
            ),
            _buildAnnouncementCard(
              imageAsset: 'assets/icons/church.jpg',
              tagLabel: 'General',
              tagColor: const Color.fromARGB(255, 51, 123, 54),
              date: 'October 18, 2023',
              title: 'Annual Membership Meeting',
              description:
                  'Please join us for our yearly state-of -the-church update and leadership elections...',
            ),
            _buildAnnouncementCard(
              imageAsset: 'assets/icons/worship.jpg',
              tagLabel: 'Event',
              tagColor: const Color.fromARGB(255, 17, 8, 175),
              date: 'October 15, 2023',
              title: 'Night of Worship',
              description:
                  'An evening dedicated to prayer, music, and community. Door opens at 6:30 PM...',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterChip(String label, {required bool isSelected}) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.primaryColor : const Color(0xFFEEEEF6),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black54,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildAnnouncementCard({
    required String imageAsset,
    required String tagLabel,
    required Color tagColor,
    required String date,
    required String title,
    required String description,
  }) {
    return Card(
      elevation: 0,
      color: Colors.white,
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.grey.shade100),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                imageAsset,
                height: 160,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 12,
                left: 12,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: tagColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    tagLabel.toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  date,
                  style: const TextStyle(
                    color: Colors.black38,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1A1A1A),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.black54,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
