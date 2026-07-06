import 'package:flutter/material.dart';
import 'package:grace_community/components/person_card.dart';
import 'package:grace_community/resources/app_colors.dart';
import 'package:grace_community/search_text_field.dart';

class PeopleScreen extends StatelessWidget {
  const PeopleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SearchTextField(onChanged: (value) {}, value: ""),
        ),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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

                _buildSectionHeader('A'),
                PersonCard(
                  imageAsset: 'assets/icons/image1.jpg',
                  name: 'Alice Thompson',
                  role: 'Youth Leader',
                  roleColor: const Color(0xFF0F624C),
                ),
                PersonCard(
                  imageAsset: 'assets/icons/image2.jpg',
                  name: 'Aaron Miller',
                  role: 'Lead Volunteer',
                  roleColor: const Color(0xFF5F5D68),
                ),

                _buildSectionHeader('B'),
                PersonCard(
                  imageAsset: 'assets/icons/image3.jpg',
                  name: 'Benjamin Carter',
                  role: 'Elder',
                  roleColor: const Color(0xFF0F624C),
                ),

                _buildSectionHeader('C'),
                PersonCard(
                  imageAsset: 'assets/icons/image1.jpg',
                  name: 'Clara Evans',
                  role: 'Small Group Host',
                  roleColor: const Color(0xFF5F5D68),
                ),

                _buildSectionHeader('D'),
                PersonCard(
                  imageAsset: 'assets/icons/image2.jpg',
                  name: 'David Wilson',
                  role: 'Worship Pastor',
                  roleColor: const Color(0xFF0F624C),
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
          color: Colors.indigo,
        ),
      ),
    );
  }
}