import 'package:flutter/material.dart';
import 'package:grace_community/resources/app_colors.dart';

class PeopleScreen extends StatelessWidget {
  const PeopleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Search Bar
        Container(
          margin: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.shade200),
          ),
          child: const TextField(
            decoration: InputDecoration(
              hintText: 'Search for people...',
              hintStyle: TextStyle(color: Colors.black38, fontSize: 14),
              prefixIcon: Icon(Icons.search, color: Colors.black38, size: 20),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 12),
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Filter Chips
                SizedBox(
                  height: 38,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        _buildFilterChip('All Members', isSelected: true),
                        _buildFilterChip('Staff', isSelected: false),
                        _buildFilterChip('Volunteers', isSelected: false),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // People List
                _buildSectionHeader('A'),
                _buildPersonCard(
                  imageAsset: 'assets/icons/image1.jpg',
                  name: 'Alice Thompson',
                  role: 'Youth Leader',
                  roleColor: const Color(0xFF0F624C),
                ),

                _buildPersonCard(
                  imageAsset: 'assets/icons/image1.jpg',
                  name: 'Alice Thompson',
                  role: 'Youth Leader',
                  roleColor: const Color(0xFF5F5D68),
                ),
                _buildSectionHeader('B'),
                _buildPersonCard(
                  imageAsset: 'assets/icons/image1.jpg',
                  name: 'Alice Thompson',
                  role: 'Youth Leader',
                  roleColor: const Color(0xFF5F5D68),
                ),
                _buildPersonCard(
                  imageAsset: 'assets/icons/image1.jpg',
                  name: 'Alice Thompson',
                  role: 'Youth Leader',
                  roleColor: const Color(0xFF5F5D68),
                ),
                _buildPersonCard(
                  imageAsset: 'assets/icons/image1.jpg',
                  name: 'Alice Thompson',
                  role: 'Youth Leader',
                  roleColor: const Color(0xFF5F5D68),
                ),
                _buildPersonCard(
                  imageAsset: 'assets/icons/image1.jpg',
                  name: 'Alice Thompson',
                  role: 'Youth Leader',
                  roleColor: const Color(0xFF5F5D68),
                ),
                _buildPersonCard(
                  imageAsset: 'assets/icons/image1.jpg',
                  name: 'Alice Thompson',
                  role: 'Youth Leader',
                  roleColor: const Color(0xFF5F5D68),
                ),
                _buildPersonCard(
                  imageAsset: 'assets/icons/image1.jpg',
                  name: 'Alice Thompson',
                  role: 'Youth Leader',
                  roleColor: const Color(0xFF5F5D68),
                ),
                _buildPersonCard(
                  imageAsset: 'assets/icons/image1.jpg',
                  name: 'Alice Thompson',
                  role: 'Youth Leader',
                  roleColor: const Color(0xFF5F5D68),
                ),
              ],
            ),
          ),
        ),
      ],
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

  Widget _buildSectionHeader(String letter) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: Text(
        letter,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget _buildPersonCard({
    required String imageAsset,
    required String name,
    required String role,
    required Color roleColor,
  }) {
    return Card(
      elevation: 0,
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.grey.shade100),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.grey.shade200, width: 2),
                image: DecorationImage(
                  image: AssetImage(imageAsset),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1A1A1A),
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    role,
                    style: TextStyle(
                      fontSize: 13,
                      color: roleColor,
                      fontWeight: FontWeight.w200,
                      height: 1.2,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 44,
              height: 44,
              decoration: const BoxDecoration(
                color: Color(0xFF56FFA4),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.phone,
                color: Color(0xFF0F624C),
                size: 20,
              ),
            ),
            const SizedBox(width: 12),
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.chat_bubble,
                color: Colors.white,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
