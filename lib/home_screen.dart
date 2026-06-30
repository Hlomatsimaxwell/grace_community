import 'package:flutter/material.dart';
import 'package:grace_community/components/story_avatar.dart';
import 'package:grace_community/resources/app_colors.dart';
import 'package:grace_community/resources/app_images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Icon(Icons.church, color: Colors.white),
        ),
        title: Text(
          "Grace Community",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(
              Icons.location_on_outlined,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 4),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Community Stories',
                  style: TextStyle(fontSize: 20),
                  overflow: TextOverflow.ellipsis,
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    debugPrint('I was Clicked');
                  },
                  child: Text(
                    'View All',
                    style: TextStyle(color: AppColors.primaryColor),
                  ),
                ),
              ],
            ),
            //stories          //
            SizedBox(
              height: 100,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    StoryAvatar(
                      imageUrl: 'assets/icons/image1.jpg',
                      storyName: 'Sarah J.',
                      isViewed: false,
                    ),
                    StoryAvatar(
                      imageUrl: 'assets/icons/image2.jpg',
                      storyName: 'Youth',
                      isViewed: false,
                    ),
                    StoryAvatar(
                      imageUrl: 'assets/icons/image3.jpg',
                      storyName: 'Building',
                      isViewed: false,
                    ),
                    StoryAvatar(
                      imageUrl: 'assets/icons/image1.jpg',
                      storyName: 'Worship',
                      isViewed: false,
                    ),
                    StoryAvatar(
                      imageUrl: 'assets/icons/image2.jpg',
                      storyName: 'Outreach',
                      isViewed: false,
                    ),
                  ],
                ),
              ),
            ),

Card(
  elevation: 0,
  color: const Color(0xFFE2DFFF),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  child: Padding(padding: const EdgeInsets.all(20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Icon(Icons.calendar_month_outlined, size: 16, color: Colors.green.shade700),
          const SizedBox(width: 6,),
          Text(
            'NEXT GATHERING',
            style:TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.green.shade700,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
      const SizedBox(height: 8,),
      const Text(
        'Sunday Service',
        style: TextStyle( fontSize: 24, fontWeight: FontWeight.bold),
      )
    ],              
  ),),
),

            // weekly bulletin
            _buildMenuCard(
              context,
              title: 'Weekly Bulletin',
              subtitle: "View what's happening this week",
              icon: Icons.menu_book_outlined,
            ),
            const SizedBox(height: 12),

            // join a lifegroup
            _buildMenuCard(
              context,
              title: 'Join a LifeGroup',
              subtitle: 'Find your circle of community',
              icon: Icons.people_outline,
            ),
            const SizedBox(height: 12),

            // prayer request
            _buildMenuCard(
              context,
              title: 'Prayer Request',
              subtitle: 'How can we pray for you?',
              icon: Icons.request_quote_outlined,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
  }) {
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: BorderSide(color: Colors.grey.shade200),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16.0),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.indigo.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Icon(icon, color: Colors.indigo),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1A1A1A),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
